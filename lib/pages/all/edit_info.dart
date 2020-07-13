import 'package:flutter/material.dart';
import '../../entity/rush_all_entity.dart';

class EditInfo extends StatefulWidget {
  Infos info = Infos();

  EditInfo(info) {
    //初始化info对象
    if (info != null) {
      this.info = info;
    }
  }

  @override
  State<StatefulWidget> createState() => PageState(this.info);
}

class PageState extends State<EditInfo> {
  Infos info;

  String _server;
  String _user;
  String _pass;
  String _hour = '12';
  String _minute = '0';
  String _xqmc;

  bool _qfxq = false;
  bool _rzxq = false;

  PageState(this.info);

  TextEditingController _serverEditingController = TextEditingController();
  TextEditingController _userEditingController = TextEditingController();
  TextEditingController _passEditingController = TextEditingController();

  @override
  void initState() {
    if (info.server != null) {
      _serverEditingController.value = TextEditingValue(text: info.server);
    } else {
      _serverEditingController.value =
          TextEditingValue(text: 'http://zhjw.qfnu.edu.cn');
    }
    if (info.user != null) {
      _userEditingController.value = TextEditingValue(text: info.user);
    }
    if (info.pass != null) {
      _passEditingController.value = TextEditingValue(text: info.pass);
    }
    if (info.xqmc != null) {
      _xqmc = info.xqmc;
    }
    if (info.hour != null && info.minute != null) {
      _hour = info.hour;
      _minute = info.minute;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('教务信息'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 20),
          //选课时间
          Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
            SizedBox(width: 20.0),
            Text("▌",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlue)),
            SizedBox(width: 10.0),
            Text("选课时间",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
          ]),
          SizedBox(height: 10),
          //选课时间
          FlatButton(
            child: new Text(
                _hour != null
                    ? _hour +
                        ':' +
                        (_minute.length < 2 ? ('0' + _minute) : _minute)
                    : '12:00',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
            onPressed: () {
              showTimePicker(
                context: context,
                initialTime: new TimeOfDay.now(),
              ).then((val) {
                if (val != null) {
                  setState(() {
                    _hour = val.hour.toString();
                    _minute = val.minute.toString();
                  });
                }
              }).catchError((err) {
                print(err);
              });
            },
          ),
          SizedBox(height: 10),
          //个人信息
          Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
            SizedBox(width: 20.0),
            Text("▌",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlue)),
            SizedBox(width: 10.0),
            Text("个人信息",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
          ]),
          SizedBox(height: 20),
          //账号
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(children: <Widget>[
              Icon(
                Icons.person,
                color: Colors.black45,
                size: 20.0,
              ),
              SizedBox(width: 20),
              Container(
                width: 260.0,
                child: TextField(
                  controller: _userEditingController,
                  keyboardType: TextInputType.number,
                  decoration: new InputDecoration(
                      contentPadding: const EdgeInsets.all(10.0),
                      hintText: '学号...',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
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
              )
            ]),
          ),
          SizedBox(height: 20.0),
          //密码
          Padding(
            padding: EdgeInsets.only(
                left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
            child: Row(children: <Widget>[
              Icon(
                Icons.lock,
                color: Colors.black45,
                size: 20.0,
              ),
              SizedBox(width: 20),
              Container(
                width: 260.0,
                child: TextField(
                  controller: _passEditingController,
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: new InputDecoration(
                      contentPadding: const EdgeInsets.all(10.0),
                      hintText: '新教务系统密码（不小于8位数）...',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
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
              )
            ]),
          ),
          SizedBox(height: 20.0),
          //教务信息
          Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
            SizedBox(width: 20.0),
            Text("▌",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlue)),
            SizedBox(width: 10.0),
            Text("教务地址",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
          ]),
          SizedBox(height: 15),
          //教务地址
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(children: <Widget>[
              Icon(
                Icons.flash_on,
                color: Colors.black45,
                size: 20.0,
              ),
              SizedBox(width: 20),
              Container(
                width: 260.0,
                child: TextField(
                  controller: _serverEditingController,
                  keyboardType: TextInputType.text,
                  decoration: new InputDecoration(
                      contentPadding: const EdgeInsets.all(10.0),
                      hintText: '教务服务器地址...',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
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
              )
            ]),
          ),
          SizedBox(height: 20.0),
          //上课校区
          MaterialButton(
              height: 50,
              elevation: 0.0,
              color: Color.fromRGBO(255, 183, 223, 1),
              textColor: Colors.white,
              child: Text(
                _xqmc != null ? _xqmc : '所在校区：曲阜（默认）',
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              onPressed: () async {
                //TODO 弹出复选对话框（底部）
                await showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return StatefulBuilder(builder: (context, setState) {
                        return Stack(children: <Widget>[
                          Container(
                            height: 20,
                            width: double.infinity,
                            color: Colors.black54,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                            ),
                            child: ListView(
                              children: <Widget>[
                                Image.asset("images/qfnu.jpg"),
                                SizedBox(
                                  height: 20,
                                ),
                                CheckboxListTile(
                                  secondary: const Icon(
                                    Icons.trip_origin,
                                    color: Colors.lightBlue,
                                  ),
                                  title: const Text('曲阜校区'),
                                  value: _qfxq,
                                  onChanged: (bool value) {
                                    setState(() {
                                      _qfxq = value;
                                      if (value) {
                                        info.xqmc = '曲阜';
                                      } else {
                                        info.xqmc = '日照';
                                      }
                                    });
                                  },
                                ),
                                CheckboxListTile(
                                  secondary: const Icon(
                                    Icons.trip_origin,
                                    color: Colors.lightBlue,
                                  ),
                                  title: const Text('日照校区'),
                                  value: _rzxq,
                                  onChanged: (bool value) {
                                    setState(() {
                                      _rzxq = value;
                                    });
                                    if (value) {
                                      info.xqmc = '日照';
                                    } else {
                                      info.xqmc = '曲阜';
                                    }
                                  },
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white70,
                                  ),
                                  height: 80,
                                  child: Row(children: <Widget>[
                                    Expanded(
                                      child: Builder(
                                          builder: (BuildContext context) {
                                        return Container(
                                          height: 50,
                                          child: RaisedButton(
                                            color: Colors.lightBlue,
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Text(
                                              "确定",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        );
                                      }),
                                    ),
                                  ]),
                                ),
                              ],
                            ),
                          ),
                        ]);
                      });
                    });
                setState(() {
                  _xqmc = info.xqmc;
                });
              }),
        ],
      ),
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
                  color: Colors.lightBlue,
                ),
                child: RaisedButton(
                  color: Colors.lightBlue,
                  onPressed: () {
                    _addEditInfo(context);
                  },
                  child: Text(
                    "确定",
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

  void _addEditInfo(BuildContext context) {
    _server = _serverEditingController.value.text.toString();
    _user = _userEditingController.value.text.toString();
    _pass = _passEditingController.value.text.toString();

    if (_pass.length <= 7) {
      showDialog(
          context: context,
          child: new AlertDialog(
            title: Text(
              "密码有误！",
              style: TextStyle(color: Colors.red),
            ),
            content: Text("请输入新教务系统密码(8位数以上)，注意不是旧教务系统密码（身份证号后六位）。"),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("确定")),
            ],
          ));
    } else {
      if (_xqmc == null) {
        info.xqmc = '曲阜';
      }
      info.server = _server;
      info.user = _user;
      info.pass = _pass;
      info.hour = _hour;
      info.minute = _minute;
      Navigator.of(context).pop(this.info);
    }
  }
}
