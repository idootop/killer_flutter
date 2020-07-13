import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import '../../entity/rush_all_entity.dart';
import 'edit_all.dart';
import 'edit_info.dart';
import 'package:encrypt/encrypt.dart' as x;
import 'killer_all.dart';
import '../web/find_password.dart';

class RushAllList extends StatefulWidget {
  @override
  _RushAllListState createState() => _RushAllListState();
}

class _RushAllListState extends State<RushAllList> {
  List<Rushes> rushAllListData = List();
  RushAll rushAll = RushAll();
  Infos info = Infos();
  var _context;

  TextEditingController _configInEditingController = TextEditingController();
  TextEditingController _configOutEditingController = TextEditingController();

  var _scaffoldkey = new GlobalKey<ScaffoldState>();

  dynamic key, iv, encrypter, configIn, configOut;
  @override
  void initState() {
    key = x.Key.fromUtf8('好好学习天天向上');
    iv = x.IV.fromLength(16);
    encrypter = x.Encrypter(x.AES(key));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _context = context;
    return Scaffold(
      key: _scaffoldkey,
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
          title: new Text('选课列表'),
          backgroundColor: Colors.blue,
          centerTitle: true,
          actions: <Widget>[
            new IconButton(
                icon: new Icon(Icons.alarm_add),
                //TODO 转到编辑信息页面，用于修改选课时间
                onPressed: () {
                  Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) =>
                                  EditInfo(info == null ? null : info)))
                      .then((info) {
                    if (info != null) {
                      setState(() {
                        this.info = info;
                        print(info);
                      });
                    }
                  });
                }),
            // 隐藏的菜单
            PopupMenuButton(
              itemBuilder: (BuildContext context) {
                return <PopupMenuItem<String>>[
                  PopupMenuItem<String>(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.flash_on,
                            color: Colors.orangeAccent,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('开始选课')
                        ]),
                    value: "start",
                  ),
                  PopupMenuItem<String>(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.insert_drive_file,
                              color: Colors.lightBlue),
                          SizedBox(
                            width: 10,
                          ),
                          Text("导入课表")
                        ]),
                    value: "in",
                  ),
                  PopupMenuItem<String>(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.assignment_turned_in, color: Colors.pink),
                          SizedBox(
                            width: 10,
                          ),
                          Text("导出课表")
                        ]),
                    value: "out",
                  ),
                  PopupMenuItem<String>(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.help, color: Colors.black),
                          SizedBox(
                            width: 10,
                          ),
                          Text("使用教程")
                        ]),
                    value: "help",
                  ),
                ];
              },
              onSelected: (String action) {
                switch (action) {
                  case 'help':
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => FindPassword(
                                  'https://mp.weixin.qq.com/s?__biz=MzUzMjQ1MzczMg==&mid=2247483850&idx=1&sn=38657c6e444fc2a5fcaabd8c5f36114a&chksm=fab241c1cdc5c8d78f28b4baa0d865a91f49b4c1a8762930863fb13ad53aa90e47cde8bbaef0&token=302097083&lang=zh_CN#rd',
                                  '使用教程',
                                )));
                    break;
                  case "start":
                    if (info.pass != null && info.pass != '') {
                      rushAll.infos = info;
                      rushAll.rushes = rushAllListData;
                      var config = jsonEncode(rushAll.toJson());
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => KillerAll(config)));
                    } else {
                      showDialog(
                          context: context,
                          child: new AlertDialog(
                            title: Text(
                              "注意！",
                              style: TextStyle(color: Colors.red),
                            ),
                            content: Text("请先填写完整教务信息..."),
                            actions: <Widget>[
                              FlatButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => EditInfo(
                                                info == null
                                                    ? null
                                                    : info))).then((info) {
                                      if (info != null) {
                                        setState(() {
                                          this.info = info;
                                          print(info);
                                        });
                                      }
                                    });
                                  },
                                  child: Text("确定")),
                            ],
                          ));
                    }
                    break;
                  case "in":
                    showDialog(
                        context: context,
                        child: new AlertDialog(
                          title: Text(
                            "导入课表",
                            // style: TextStyle(color: Colors.red),
                          ),
                          content: TextField(
                            controller: _configInEditingController,
                            onChanged: (s) {
                              if (s.length > 4) {
                                setState(() {
                                  configIn = encrypter.decrypt(
                                      x.Encrypted.fromBase64(s),
                                      iv: iv);
                                });
                              }
                            },
                            maxLines: 5,
                            keyboardType: TextInputType.text,
                            decoration: new InputDecoration(
                                contentPadding: const EdgeInsets.all(10.0),
                                hintText: '长按空白处粘贴导入选课表...',
                                hintStyle:
                                    TextStyle(color: Colors.grey, fontSize: 14),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.blue,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.blue,
                                  ),
                                )),
                          ),
                          actions: <Widget>[
                            FlatButton(
                                onPressed: () {
                                  if (configIn != null) {
                                    if (configIn.contains('rushes')) {
                                      setState(() {
                                        rushAll = RushAll.fromJson(
                                            jsonDecode(configIn));
                                        rushAllListData = rushAll.rushes;
                                        info = rushAll.infos;
                                      });
                                      _scaffoldkey.currentState
                                          .showSnackBar(SnackBar(
                                        content: Text('导入成功~~~'),
                                        duration: Duration(milliseconds: 600),
                                      ));
                                    } else {
                                      _scaffoldkey.currentState
                                          .showSnackBar(SnackBar(
                                        content: Text('格式错误，导入失败~~~'),
                                        duration: Duration(milliseconds: 600),
                                      ));
                                    }
                                  } else {
                                    _scaffoldkey.currentState
                                        .showSnackBar(SnackBar(
                                      content: Text('格式错误，导入失败~~~'),
                                      duration: Duration(milliseconds: 600),
                                    ));
                                  }
                                  Navigator.of(context).pop();
                                  //解密，设置config
                                },
                                child: Text("确定")),
                          ],
                        ));
                    break;
                  case "out":
                    //TODO 加密字符串，未填写教务信息导出，填写警告！
                    if (info.pass != null && info.pass != '') {
                      showDialog(
                          context: _context,
                          child: new AlertDialog(
                            title: Text(
                              ' 警告！',
                              style: TextStyle(color: Colors.red),
                            ),
                            content:
                                Text("不允许将个人教务信息导出，如需导出课表分享给别人，请先清除自己的账号密码信息。"),
                            actions: <Widget>[
                              FlatButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text("确定")),
                            ],
                          ));
                    } else {
                      rushAll.infos = info;
                      rushAll.rushes = rushAllListData;
                      var config = jsonEncode(rushAll.toJson());
                      var encrypted = encrypter.encrypt(config, iv: iv);
                      var encoded = encrypted.base64;
                      _configOutEditingController.value =
                          TextEditingValue(text: encoded);
                      showDialog(
                          context: context,
                          child: new AlertDialog(
                            title: Text("导出课表（长按全选复制）",
                                style: TextStyle(fontSize: 20)),
                            content: TextField(
                              controller: _configOutEditingController,
                              maxLines: 8,
                              keyboardType: TextInputType.text,
                              decoration: new InputDecoration(
                                  contentPadding: const EdgeInsets.all(10.0),
                                  hintText: '导出课表（长按全选复制即可）...',
                                  hintStyle: TextStyle(
                                      color: Colors.grey, fontSize: 14),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.blue,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.blue,
                                    ),
                                  )),
                            ),
                            actions: <Widget>[
                              FlatButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text("确定")),
                            ],
                          ));
                    }
                    break;
                }
              },
            ),
          ]),
      body: rushAllListData.length <= 0
          ? Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage("images/blank.png"),
                    width: 300.0,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("暂无选课信息，点击右下角+添加",
                      style: TextStyle(color: Colors.black54, fontSize: 20)),
                ],
              )))
          : ReorderableListView(
              children: rushListView(),
              onReorder: (int oldIndex, int newIndex) {
                //拖动排序
                setState(() {
                  if (oldIndex < newIndex) {
                    newIndex -= 1;
                  }
                  var temp = rushAllListData.removeAt(oldIndex);
                  rushAllListData.insert(newIndex, temp);
                });
              }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //TODO 新建选课信息
          Navigator.push(
                  context, MaterialPageRoute(builder: (_) => EditAll(null)))
              .then((rush) {
            if (rush != null) {
              setState(() {
                rushAllListData.add(rush);
              });
            }
          });
        },
        child: Icon(
          Icons.add,
          size: 36,
        ),
        backgroundColor: Colors.lightBlue,
      ),
    );
  }

  List<Widget> rushListView() {
    List<Widget> _rushesListViews = List();
    rushAllListData.forEach((rush) {
      _rushesListViews.add(new Builder(
          key: Key(rush.one.kcxx.toString()),
          builder: (BuildContext context) {
            return Dismissible(
              key: Key(rush.one.kcxx.toString()),
              //TODO 要处理的列表内容样式
              child: GestureDetector(
                  child: ListTile(
                    leading: Icon(
                      Icons.trip_origin,
                      color: Colors.lightBlue,
                    ),
                    title: Text(rush.one.kcxx),
                    trailing: Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.lightBlue,
                      size: 30,
                    ),
                  ),
                  onTap: () {
                    //TODO 点击重新编辑
                    Navigator.push(context,
                            MaterialPageRoute(builder: (_) => EditAll(rush)))
                        .then((rush) {
                      if (rush != null) {
                        setState(() {
                          rushAllListData[rushAllListData.indexOf(rush)] = rush;
                        });
                      }
                    });
                  }),
              onDismissed: (direction) {
                var _snackStr;
                if (direction == DismissDirection.endToStart) {
                  // 从右向左  也就是删除
                  _snackStr = '删除了${rush.one.kcxx}';
                }
                if (direction == DismissDirection.startToEnd) {
                  _snackStr = '删除了${rush.one.kcxx}';
                }

                // 展示 SnackBar
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text(_snackStr),
                  duration: Duration(milliseconds: 400),
                ));

                // 删除后刷新列表，以达到真正的删除
                setState(() {
                  rushAllListData.remove(rush);
                });
              },
              background: Container(
                color: Colors.red,
                // 这里使用 ListTile 因为可以快速设置左右两端的Icon
                child: ListTile(
                  trailing: Icon(
                    Icons.delete,
                    color: Colors.white,
                  ),
                ),
              ),
              secondaryBackground: Container(
                color: Colors.red,
                // 这里使用 ListTile 因为可以快速设置左右两端的Icon
                child: ListTile(
                  trailing: Icon(
                    Icons.delete,
                    color: Colors.white,
                  ),
                ),
              ),
              confirmDismiss: (direction) async {
                var _confirmContent;

                var _alertDialog;

                if (direction == DismissDirection.endToStart) {
                  // 从右向左  也就是删除
                  _confirmContent = '确认删除${rush.one.kcxx}？';
                  _alertDialog = _createDialog(
                    _confirmContent,
                    () {
                      // 展示 SnackBar
                      Scaffold.of(context).showSnackBar(SnackBar(
                        content: Text('确认删除${rush.one.kcxx}'),
                        duration: Duration(milliseconds: 400),
                      ));
                      Navigator.of(context).pop(true);
                    },
                    () {
                      // 展示 SnackBar
                      Scaffold.of(context).showSnackBar(SnackBar(
                        content: Text('不删除${rush.one.kcxx}'),
                        duration: Duration(milliseconds: 400),
                      ));
                      Navigator.of(context).pop(false);
                    },
                  );
                } else if (direction == DismissDirection.startToEnd) {
                  _confirmContent = '确认删除${rush.one.kcxx}？';
                  _alertDialog = _createDialog(
                    _confirmContent,
                    () {
                      // 展示 SnackBar
                      Scaffold.of(context).showSnackBar(SnackBar(
                        content: Text('确认删除${rush.one.kcxx}'),
                        duration: Duration(milliseconds: 400),
                      ));
                      Navigator.of(context).pop(true);
                    },
                    () {
                      // 展示 SnackBar
                      Scaffold.of(context).showSnackBar(SnackBar(
                        content: Text('不删除${rush.one.kcxx}'),
                        duration: Duration(milliseconds: 400),
                      ));
                      Navigator.of(context).pop(false);
                    },
                  );
                }

                var isDismiss = await showDialog(
                    context: context,
                    builder: (context) {
                      return _alertDialog;
                    });
                return isDismiss;
              },
            );
          }));
    });
    return _rushesListViews;
  }

  Future myTips(title, words) {
    return showDialog(
        context: _context,
        child: new AlertDialog(
          title: Text(
            title,
            style: TextStyle(color: Colors.red),
          ),
          content: Text(words),
          actions: <Widget>[
            FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("确定")),
          ],
        ));
  }
}

Widget _createDialog(
    String _confirmContent, Function sureFunction, Function cancelFunction) {
  return AlertDialog(
    title: Text('注意!'),
    content: Text(_confirmContent),
    actions: <Widget>[
      FlatButton(
          onPressed: sureFunction,
          child: Text('删除', style: TextStyle(color: Colors.red))),
      FlatButton(onPressed: cancelFunction, child: Text('取消')),
    ],
  );
}
