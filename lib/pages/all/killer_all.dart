import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../entity/rush_all_entity.dart';
import 'dart:math';
import '../../tools/http.dart';
import 'dart:convert';
import '../../entity/courses_entity.dart';
import '../web/rush_result.dart';
import 'dart:async';

class KillerAll extends StatefulWidget {
  var config;

  KillerAll(config) {
    this.config = config;
  }

  @override
  _KillerAllState createState() => _KillerAllState(this.config);
}

class _KillerAllState extends State<KillerAll> {
  RushAll rushAll;
  List<String> _listData = List<String>();
  var _scaffoldkey = new GlobalKey<ScaffoldState>();
  var xkResult = '开始选课⚡';
  var cookie;
  var _xkColor = Color.fromRGBO(33, 150, 243, 1);
  var doorList = []; //TODO 已开启的选课类型！！！
  ///////////////////////////////////////////////////////////////////////////
  String USER = '';
  String PASS = '';
  String HH = '08';
  String MM = '10';
  String SERVER = "http://zhjw.qfnu.edu.cn";
  var RUSHES;
  var INOFS;

  Http http = Http();

  int MOPEN = 1000;
  int MRUSH = 50;
  int MFAIL = 3;//TODO 每节课程记得设置最大提交出错数！！！
  bool ZY = false;
  int TOTAL = 0; //选课成功几节课
  List XQ = [1, 1, 1, 1, 1, 1, 1, 1]; //星期志愿列表
  String JX0502ZBID = '';
  var CHECKS = {
    'sEcho': 1,
    'iColumns': 12,
    'sColumns': '',
    'iDisplayStart': 0,
    'iDisplayLength': 15, //返回数据长度
    'mDataProp_0': 'kch',
    'mDataProp_1': 'kcmc',
    'mDataProp_2': 'fzmc',
    'mDataProp_3': 'xf',
    'mDataProp_4': 'skls',
    'mDataProp_5': 'sksj',
    'mDataProp_6': 'skdd',
    'mDataProp_7': 'xqmc',
    'mDataProp_8': 'xkrs',
    'mDataProp_9': 'syrs',
    'mDataProp_10': 'ctsm',
    'mDataProp_11': 'czOper',
  };
  ///////////////////////////////////////////////////////////////////////////
  _KillerAllState(String json) {
    if (json != null && json != '') {
      var config = RushAll.fromJson(jsonDecode(json));
      this.USER = config.infos.user;
      this.PASS = config.infos.pass;
      this.HH = config.infos.hour;
      this.MM = config.infos.minute;
      this.SERVER = config.infos.server;
      this.RUSHES = config.rushes;
      this.INOFS = config.infos;
    }
  }
  ///////////////////////////////////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('开始选课'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: _createListView(),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white70,
        ),
        height: 50,
        child: Row(children: <Widget>[
          Expanded(
            child: Builder(builder: (BuildContext context) {
              return Container(
                height: 50,
                decoration: BoxDecoration(
                  color: _xkColor,
                ),
                child: RaisedButton(
                  color: _xkColor,
                  onPressed: () async {
                    //点击确定，开始选课
                    if (xkResult.contains('开始')) {
                      setState(() async {
                        // _xkColor=Color.fromRGBO(237, 210, 201, 1);
                        xkResult = '正在选课,请勿退出...';
                        var xkresult = await this.start();
                        // _xkColor=Color.fromRGBO(255, 183, 223, 1);
                        xkResult = xkresult;
                      });
                    } else if (xkResult.contains('完毕')) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => RushResult(
                                  'http://zhjw.qfnu.edu.cn/jsxsd/',
                                  '选课结果',
                                  '我是cookie',
                                  USER,
                                  PASS)));
                    } else if (xkResult.contains('退出')) {
                      //点击确定，退出选课
                      Navigator.of(context).pop();
                    }
                  },
                  child: Text(
                    xkResult,
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              );
            }),
          ),
        ]),
      ),
    );
  }

  // 创建ListView
  Widget _createListView() {
    return _listData.length == 0
        ? Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(
                  image: AssetImage("images/start.png"),
                  width: 300.0,
                ),
                SizedBox(
                  height: 20,
                ),
                Text("点击下方⚡立即开始选课吧^_^",
                    style: TextStyle(color: Colors.black54, fontSize: 18)),
              ],
            )))
        : ListView.builder(
            itemCount: _listData.length,
            itemBuilder: (context, index) {
              return Container(
                  // Key
                  key: Key('key${_listData[index]}'),
                  // Child
                  child: GestureDetector(
                    child: Text(_listData[index]),
                    onLongPress: () {
                      Clipboard.setData(ClipboardData(text: _listData[index]));
                      Scaffold.of(context).showSnackBar(SnackBar(
                        content: Text('已复制到粘贴板...'),
                        duration: Duration(milliseconds: 600),
                      ));
                    },
                  )
                  );
            },
          );
  }

  ///////////////////////////////////////////////////////////////////////////
  int random(min, max) => min + Random().nextInt(max - min);

  String b64(s) => base64Encode(utf8.encode(s));

  Future littleDelay() async =>
      await Future.delayed(Duration(milliseconds: random(1000, 2000)));

  Future bigDelay() async =>
      await Future.delayed(Duration(milliseconds: random(1000, 3000)));

  List now() {
    var date = new DateTime.now();
    var h = int.parse(date.hour.toString().padLeft(2, '0'));
    var m = int.parse(date.minute.toString().padLeft(2, '0'));
    var time = [h, m];
    return time;
  }

  int delay() {
    var time = now();
    var h = time[0];
    var m = time[1];
    int _min = 3;
    int _max = 3;
    var hh = int.parse(HH);
    var mm = int.parse(MM);
    var t = hh * 60 + mm - h * 60 - m;
    if (t >= 0) {
      if (t <= 1) {
        _min = 2;
        _max = 3;
      } else if (t <= 3) {
        _min = 9;
        _max = 10;
      } else if (t <= 10) {
        _min = 19;
        _max = 20;
      } else if (t <= 30) {
        _min = 29;
        _max = 30;
      } else {
        _min = 59;
        _max = 60;
      }
    } else {
      if (t >= -1) {
        _min = 2;
        _max = 3;
      } else if (t >= -3) {
        _min = 4;
        _max = 5;
      } else if (t >= -10) {
        _min = 9;
        _max = 10;
      } else if (t >= -30) {
        _min = 29;
        _max = 30;
      } else {
        _min = 59;
        _max = 60;
      }
    }
    _min++;
    _max++;
    return random(_min * 1000, _max * 1000);
  }

  String keyQuery(kcxx, skls) =>
      '?kcxx=' +
      Uri.encodeComponent(
          Uri.encodeComponent((kcxx == 'null' || kcxx == null) ? '' : kcxx)) +
      '&skls=' +
      Uri.encodeComponent(
          Uri.encodeComponent((skls == 'null' || skls == null) ? '' : skls)) +
      '&skxq=&skjc=&sfym=true&sfct=true&sfxx=true';

  String keyOper(kcid, cfbs, jx0404id, xkzy) =>
      '?kcid=' +
      kcid.toString() +
      '&cfbs=' +
      cfbs.toString() +
      '&jx0404id=' +
      jx0404id.toString() +
      '&xkzy=' +
      xkzy.toString() +
      '&trjf=';

  Future<bool> login() async {
    dynamic result;
    var encoded = b64(USER) + '%%%' + b64(PASS);
    var data = {
      'userAccount': USER,
      'userPassword': PASS,
      'encoded': encoded,
    };
    result = await http.post(SERVER + '/jsxsd/xk/LoginToXk', data: data);
    if (result.contains("请求失败")) {
      setState(() {
        _listData.add('登陆中--> 网络异常，错误代码0x00211');
      });
      return false;
    }
    if (result.contains("教学一体化服务平台")) {
      setState(() {
        _listData.add('登陆中--> 登陆成功！≧▽≦');
      });
      return true;
    } else {
      setState(() {
        _listData.add('登陆中--> 账号或密码错误,请退出后重试~~~');
      });
      return false;
    }
  }

  Future<bool> monitor() async {
    dynamic result;
    var count = 1;
    while (true) {
      result = await http.get(SERVER + "/jsxsd/xsxk/xklc_list");
      if (result.contains("请求失败")) {
        setState(() {
          _listData.add('监测中--> 网络异常，错误代码0x00212');
        });
        return false;
      }
      var key = RegExp('href="(.+)" target="blank">进入选课').stringMatch(result);
      if (key != null) {
        setState(() {
          _listData.add('监测中--> 开始选课了! ≧▽≦');
        });
        JX0502ZBID = key.substring(6, 72);
        if (result.contains("志愿抽签")) {
          ZY = true;
        }
        return true;
      } else {
        setState(() {
          _listData.add('监测中--> 选课开始监控中,已查询${count}次......');
        });
        count++;
        if (count <= MOPEN) {
          await Future.delayed(Duration(milliseconds: delay()));
        } else {
          setState(() {
            _listData.add('监测中--> 监测次数过多，请稍后再试！');
          });
          return false;
        }
      }
    }
  }

  Future<bool> openDoor(where) async {
    dynamic result;
    var count = 1;
    while (true) {
      result = await http.get(SERVER + JX0502ZBID);
      if (result.contains("请求失败")) {
        setState(() {
          _listData.add('监测中--> 网络异常，错误代码0x00213');
        });
        return false;
      }
      switch (where) {
        case 0:
          if (result.contains("跨专业选课")) {
            setState(() {
              _listData.add('监测中--> 跨专业选课已开启。。。');
            });
            return true;
          } else {
            setState(() {
              _listData.add('监测中--> 跨专业选课未开启~~~');
            });
            count++;
            if (count <= MOPEN) {
              await Future.delayed(Duration(milliseconds: delay()));
            } else {
              setState(() {
                _listData.add('监测中--> 监测次数过多，请稍后再试！');
              });
              return false;
            }
          }
          break;
        case 1:
          if (result.contains("本学期计划选课")) {
            setState(() {
              _listData.add('监测中--> 本学期计划选课已开启。。。');
            });
            return true;
          } else {
            setState(() {
              _listData.add('监测中--> 本学期计划选课未开启~~~');
            });
            count++;
            if (count <= MOPEN) {
              await Future.delayed(Duration(milliseconds: delay()));
            } else {
              setState(() {
                _listData.add('监测中--> 监测次数过多，请稍后再试！');
              });
              return false;
            }
          }
          break;
        case 2:
          if (result.contains("公选课选课")) {
            setState(() {
              _listData.add('监测中--> 公选课选课已开启。。。');
            });
            return true;
          } else {
            setState(() {
              _listData.add('监测中--> 公选课选课未开启~~~');
            });
            count++;
            if (count <= MOPEN) {
              await Future.delayed(Duration(milliseconds: delay()));
            } else {
              setState(() {
                _listData.add('监测中--> 监测次数过多，请稍后再试！');
              });
              return false;
            }
          }
          break;
        default:
          return true;
          break;
      }
    }
  }

  Future<bool> openDoorX() async {
    var result = await http.get(SERVER + JX0502ZBID);
    if (result.contains("请求失败")) {
      setState(() {
        _listData.add('监测中--> 网络异常，错误代码0x00213');
      });
      return false;
    }
    if (result.contains("跨专业选课") || result.contains("计划外选课")) {
      setState(() {
        _listData.add('监测中--> 跨专业选课已开启。。。');
      });
      if (!doorList.contains(0)) {
        doorList.add(0);
      }
    }
    if (result.contains("本学期计划选课")) {
      setState(() {
        _listData.add('监测中--> 本学期计划选课已开启。。。');
      });
      if (!doorList.contains(1)) {
        doorList.add(1);
      }
    }
    if (result.contains("公选课选课")) {
      setState(() {
        _listData.add('监测中--> 公选课选课已开启。。。');
      });
      if (!doorList.contains(2)) {
        doorList.add(2);
      }
    }
    if (result.contains("必修选课")) {
      setState(() {
        _listData.add('监测中--> 必修选课已开启。。。');
      });
      //添加必修选课查询
      if (!doorList.contains(3)) {
        doorList.add(3);
      }
    }
    if (result.contains("选修选课")) {
      setState(() {
        _listData.add('监测中--> 选修选课已开启。。。');
      });
      //添加选修选课查询
      if (!doorList.contains(4)) {
        doorList.add(4);
      }
    }
    if (result.contains("专业内跨年级选课")) {
      setState(() {
        _listData.add('监测中--> 专业内跨年级选课已开启。。。');
      });
      if (!doorList.contains(5)) {
        doorList.add(5);
      }
    }
    if (doorList.length > 0) {
      return true;
    } else {
      return false;
    }
  }

  Future<bool> monitorDoor() async {
    dynamic result;
    var count = 0;
    while (true) {
      count++;
      result = await openDoorX();
      if (result) {
        return true;
      } else if (count <= MOPEN) {
        setState(() {
          _listData.add('监测中--> 尚无法选课，已查询${count}次~~~');
        });
        await Future.delayed(Duration(milliseconds: delay()));
      } else {
        setState(() {
          _listData.add('监测中--> 监测次数过多，请稍后再试！');
        });
        return false;
      }
    }
  }

  Future<String> query(where, which, check, kcxx) async {
    dynamic result;
    switch (where) {
      case 0:
        result = await http.post(SERVER + '/jsxsd/xsxkkc/xsxkFawxk' + check,
            data: CHECKS);
        break;
      case 1:
        result = await http.post(SERVER + '/jsxsd/xsxkkc/xsxkBxqjhxk' + check,
            data: CHECKS);
        break;
      case 2:
        result = await http.post(SERVER + '/jsxsd/xsxkkc/xsxkGgxxkxk' + check,
            data: CHECKS);
        break;
      case 3:
        result = await http.post(SERVER + '/jsxsd/xsxkkc/xsxkBxxk' + check,
            data: CHECKS);
        break;
      case 4:
        result = await http.post(SERVER + '/jsxsd/xsxkkc/xsxkXxxk' + check,
            data: CHECKS);
        break;
      case 5:
        result = await http.post(SERVER + '/jsxsd/xsxkkc/xsxkKnjxk' + check,
            data: CHECKS);
        break;
      default:
        result = await http.post(SERVER + '/jsxsd/xsxkkc/xsxkFawxk' + check,
            data: CHECKS);
        break;
    }
    return result;
  }

  Future<String> submit(where, which, oper, kcxx) async {
    dynamic result;
    switch (where) {
      case 0:
        result = await http.get(SERVER + '/jsxsd/xsxkkc/fawxkOper' + oper);
        break;
      case 1:
        result = await http.get(SERVER + '/jsxsd/xsxkkc/bxqjhxkOper' + oper);
        break;
      case 2:
        result = await http.get(SERVER + '/jsxsd/xsxkkc/ggxxkxkOper' + oper);
        break;
      case 3:
        result = await http.get(SERVER + '/jsxsd/xsxkkc/bxxkOper' + oper);
        break;
      case 4:
        result = await http.get(SERVER + '/jsxsd/xsxkkc/xxxkOper' + oper);
        break;
      case 5:
        result = await http.get(SERVER + '/jsxsd/xsxkkc/knjxkOper' + oper);
        break;
      default:
        result = await http.get(SERVER + '/jsxsd/xsxkkc/fawxkOper' + oper);
        break;
    }
    return result;
  }

  int getXq(sksj) {
    if (sksj == "&nbsp;") {
      return 0;
    } else if (sksj.contains('一')) {
      return 1;
    } else if (sksj.contains('二')) {
      return 2;
    } else if (sksj.contains('三')) {
      return 3;
    } else if (sksj.contains('四')) {
      return 4;
    } else if (sksj.contains('五')) {
      return 5;
    } else if (sksj.contains('六')) {
      return 6;
    } else if (sksj.contains('日')) {
      return 7;
    } else {
      return 0;
    }
  }

  int getZy(xq) {
    if (xq == 0) {
      return 1;
    } else {
      return XQ[xq];
    }
  }

  bool sfjc(jc, skjc) {
    List temp = skjc.split(",");
    for (var s in temp) {
      if (jc.contains(s)) {
        return true;
      }
    }
    return false;
  }

  bool sfdd(dd, skdd) {
    List temp = skdd.split(" ");
    for (var s in temp) {
      if (dd.contains(s)) {
        return true;
      }
    }
    return false;
  }

  bool satisfy(kcxx, skxq, skjc, skdd, xqmc, course) {
    var kch = course.kch;
    var mc = course.kcmc;
    //课程信息不符，干掉！！！！
    if ((!mc.contains(kcxx)) && (!kch.contains(kcxx))) {
      return false;
    }
    //TODO 提示冲突，限选，干掉！！！！
    var sksj = course.sksj;
    if (sksj == "&nbsp;") {
      return true;
    }
    var school = course.xqmc;
    var dd = course.skdd;
    var list = sksj.split(" ");
    var zc = list[0], xq = list[1], jc = list[2];
    if ((skxq == 'null' || skxq == null) || skxq == '') {
      if ((skjc == 'null' || skjc == null) || skjc == '') {
        if ((skdd == 'null' || skdd == null) || skdd == '') {
          if (school == xqmc) {
            //if (zc.contains("1-")) {
              return true;
            //}
          }
        } else if ((sfdd(dd, skdd))) {
          if (school == xqmc) {
            //if (zc.contains("1-")) {
              return true;
            //}
          }
        }
      } else if (sfjc(jc, skjc)) {
        if ((skdd == 'null' || skdd == null) || skdd == '') {
          if (school == xqmc) {
            //if (zc.contains("1-")) {
              return true;
            //}
          }
        } else if ((sfdd(dd, skdd))) {
          if (school == xqmc) {
            //if (zc.contains("1-")) {
              return true;
            //}
          }
        }
      }
    } else if (skxq.contains(xq)) {
      if ((skjc == 'null' || skjc == null) || skjc == '') {
        if ((skdd == 'null' || skdd == null) || skdd == '') {
          if (school == xqmc) {
            //if (zc.contains("1-")) {
              return true;
            //}
          }
        } else if ((sfdd(dd, skdd))) {
          if (school == xqmc) {
            //if (zc.contains("1-")) {
              return true;
            //}
          }
        }
      } else if (sfjc(jc, skjc)) {
        if ((skdd == 'null' || skdd == null) || skdd == '') {
          if (school == xqmc) {
            //if (zc.contains("1-")) {
              return true;
            //}
          }
        } else if ((sfdd(dd, skdd))) {
          if (school == xqmc) {
            //if (zc.contains("1-")) {
              return true;
            //}
          }
        }
      }
    }
    return false;
  }

  Future<List> rushInfo(kcxx, skxq, skjc, skdd, xqmc, courses) async {
    int count = 0;
    var kcid, sksj, cfbs, jx0404id;
    courses.forEach((course) {
      if (satisfy(kcxx, skxq, skjc, skdd, xqmc, course)) {
        count++;
        if (count == 1) {
          kcid = course.jx02id;
          jx0404id = course.jx0404id;
          cfbs = course.cfbs;
          sksj = course.sksj;
        }
      }
    });
    return [kcid, cfbs, jx0404id, sksj];
  }

  Future<bool> rushx(where, which, key, kcxx, skxq, skjc, skdd, xqmc) async {
    dynamic result;
    result = await query(where, which, key, kcxx);
    if (result.contains("请求失败")) {
      setState(() {
        _listData.add(kcxx +
            '（' +
            which.toString() +
            '）' +
            (where + 1).toString() +
            '--> ' +
            '网络异常，错误代码0x00214');
      });
      return false;
    }
    if (!result.contains("sEcho")) {
      setState(() {
        _listData.add(kcxx +
            '（' +
            which.toString() +
            '）' +
            (where + 1).toString() +
            '--> ' +
            '请求数据异常，错误代码0x00221');
      });
      return false;
    }
    result = Courses.fromJson(jsonDecode(result));
    var courses = result.aaData;
    if (courses.length > 0) {
      result = await rushInfo(kcxx, skxq, skjc, skdd, xqmc, courses);
      if (result[0] == null) {
        setState(() {
          _listData.add(kcxx +
              '（' +
              which.toString() +
              '）' +
              (where + 1).toString() +
              '--> ' +
              '暂无符合要求的课程。。。');
        });
        return false;
      }
      var kcid, cfbs, jx0404id, sksj;
      if (which == 3) {
        kcid = courses[0].jx02id;
        jx0404id = courses[0].jx0404id;
        cfbs = courses[0].cfbs;
        sksj = courses[0].sksj;
      } else {
        kcid = result[0];
        cfbs = result[1];
        jx0404id = result[2];
        sksj = result[3];
      }
      var xq = getXq(sksj);
      var xkzy = getZy(xq);
      var oper = keyOper(kcid, cfbs, jx0404id, xkzy);
      result = await submit(where, which, oper, kcxx);
      if (result.contains("请求失败")) {
        setState(() {
          _listData.add(kcxx +
              '（' +
              which.toString() +
              '）' +
              (where + 1).toString() +
              '--> ' +
              '网络异常，错误代码0x00215');
        });
        return false;
      }
      if (!result.contains("success")) {
        setState(() {
          _listData.add(kcxx +
              '（' +
              which.toString() +
              '）' +
              (where + 1).toString() +
              '--> ' +
              '请求数据异常，错误代码0x00222');
        });
        return false;
      }
      result = jsonDecode(result);
      if (result['success']) {
        TOTAL++;
        if (xq != 0) {
          XQ[xq]++;
        }
        setState(() {
          _listData.add(kcxx +
              '（' +
              which.toString() +
              '）' +
              (where + 1).toString() +
              '--> ' +
              '选课成功^_^');
        });
        return true;
      } else {
        setState(() {
          _listData.add(kcxx +
              '（' +
              which.toString() +
              '）' +
              (where + 1).toString() +
              '--> ' +
              result['message']);
        });
        return false;
      }
    } else {
      setState(() {
        _listData.add(kcxx +
            '（' +
            which.toString() +
            '）' +
            (where + 1).toString() +
            '--> 暂无可选课程。。。');
      });
      return false;
    }
  }

  Future<bool> rushWhere(which, rush) async {
    dynamic result;
    var kcxx = rush.kcxx, xqmc = INOFS.xqmc, skls, skxq, skjc, skdd;
    if (which != 3) {
      skls = rush.skls;
      skxq = rush.skxq;
      skjc = rush.skjc;
      skdd = rush.skdd;
    }
    var key = keyQuery(kcxx, skls);
    //依次查询选课一遍
    for (var where in doorList) {
      result = await rushx(where, which, key, kcxx, skxq, skjc, skdd, xqmc);
      if (!result) {
        await littleDelay();
      } else {
        return true;
      }
    }
    return false;
  }

  ///////////////////////////////////////////////////////
  Future<bool> rushWhich(rush) async {
    dynamic result;
    result = await rushWhere(1, rush.one);
    if (!result) {
      await littleDelay();
      result = await rushWhere(2, rush.two);
      if (!result) {
        await littleDelay();
        result = await rushWhere(3, rush.one);
        if (!result) {
          // 开始监控选课！！！
          while (true) {
            await littleDelay();
            result = await rushWhere(3, rush.one);
            if (result) {
              return true;
            }
          }
        } else {
          return true;
        }
      } else {
        return true;
      }
    } else {
      return true;
    }
  }

  void rushAlll(rushes) async {
    rushes.forEach((rush) async {
      await bigDelay();
      rushWhich(rush);
    });
  }
  //////////////////////////////////////////////////////////

  Future<bool> rush12(rush) async {
    dynamic result;
    result = await rushWhere(1, rush.one);
    if (!result) {
      await littleDelay();
      result = await rushWhere(2, rush.two);
      if (!result) {
        await littleDelay();
        result = await rushWhere(3, rush.one);
        if (result) {
          return true;
        }
      } else {
        return true;
      }
    } else {
      return true;
    }
    return false;
  }

  Future<List> rush33(rush3) async {
    dynamic result;
    for (var rush in rush3) {
      await bigDelay();
      result = await rushWhere(3, rush.one);
      if (result) {
        rush3.remove(rush);
      }
    }
    return rush3;
  }

  Future<int> rushAll2() async {
    dynamic result;
    List rush3 = List();
    for (var rush in RUSHES) {
      await bigDelay();
      result = await rush12(rush);
      if (!result) {
        rush3.add(rush);
      }
    }
    int count = 0;
    while (rush3.length > 0) {
      count++;
      if (count > MRUSH) {
        break;
      }
      setState(() {
        _listData.add('选课进行中--> 正在开启第${count}轮选课，请耐心等待...');
      });
      rush3 = await rush33(rush3);
    }
    return RUSHES.length;
  }

  Future<String> start() async {
    setState(() {
      _listData.add("""
-------------------------------------------------
欢迎使用Killer-flutter重制版
Made With Love ❤ By:WJG
-------------------------------------------------

    """);
    });
    //新建连接
    dynamic result = await http.get(SERVER + '/jsxsd/');
    setState(() {
      _listData.add('登陆中--> 正在登陆，请稍候。。。');
    });
    //等待登录
    result = await login();
    if (result) {
      //登录成功，打印cookie
      // var cookie=await http.xget('http://zhjw.qfnu.edu.cn/jsxsd/');
      // setState(() {
      //   _listData.add('登录凭证--> '+cookie);
      // });
      //等待开始选课
      result = await monitor();
      if (result) {
        //等待跨专业选课开始
        result = await monitorDoor();
        if (result) {
          setState(() {
            _listData.add('开始选课--> 正在准备开始选课，请稍等。。。');
          });
          result = await rushAll2();
          if (TOTAL == result) {
            setState(() {
              _listData.add('选课结束--> WOW，人品爆炸，全部选课成功！你就是曲园最幸运的崽儿！');
            });
          } else if (TOTAL == 0) {
            setState(() {
              _listData.add('选课结束--> 呜呜呜，人生自古谁无死，一节课都没选到，宝宝不开心>_<');
            });
          } else {
            setState(() {
              _listData.add('选课结束--> 成功get到${TOTAL}门课程，略有遗憾，但也很开心^^');
            });
          }
        }
      }
    }
    return ('选课完毕，点击查看选课结果');
  }
  ////////////////////////////////////////////////////////////////////////////
}
