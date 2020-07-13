import 'package:flutter/material.dart';
import '../../entity/rush_all_entity.dart';

class EditAll extends StatefulWidget {
  Rushes rush = Rushes();
  One one = One();
  Two two = Two();

  EditAll(rush) {
    //初始化rush对象
    if (rush != null) {
      this.rush = rush;
    } else {
      this.rush.one = this.one;
      this.rush.two = this.two;
    }
  }

  @override
  State<StatefulWidget> createState() => PageState(this.rush);
}

class PageState extends State<EditAll> {
  Rushes rush;

  String _kcxx;
  String _skls1;
  String _skls2;

  var _xqList1 = [],
      _xq11 = false,
      _xq12 = false,
      _xq13 = false,
      _xq14 = false,
      _xq15 = false,
      _xq16 = false,
      _xq17 = false;

  var _jcList1 = [],
      _jc11 = false,
      _jc12 = false,
      _jc13 = false,
      _jc14 = false,
      _jc15 = false,
      _jc16 = false,
      _jc17 = false,
      _jc18 = false,
      _jc19 = false,
      _jc10 = false;

  var _xqList2 = [],
      _xq21 = false,
      _xq22 = false,
      _xq23 = false,
      _xq24 = false,
      _xq25 = false,
      _xq26 = false,
      _xq27 = false;

  var _jcList2 = [],
      _jc21 = false,
      _jc22 = false,
      _jc23 = false,
      _jc24 = false,
      _jc25 = false,
      _jc26 = false,
      _jc27 = false,
      _jc28 = false,
      _jc29 = false,
      _jc20 = false;

  var _d1dList1 = [], //曲阜
      _d1dList2 = [], //曲阜
      //第一轮
      _d1d11 = false,
      _d1d12 = false,
      _d1d13 = false,
      _d1d14 = false,
      _d1d15 = false,
      _d1d16 = false,
      _d1d17 = false,
      _d1d18 = false,
      _d1d19 = false,
      _d1d10 = false,
      _d1d111 = false,
      _d1d112 = false,
      _d1d113 = false,
      _d1d114 = false,
      //第二轮
      _d1d21 = false,
      _d1d22 = false,
      _d1d23 = false,
      _d1d24 = false,
      _d1d25 = false,
      _d1d26 = false,
      _d1d27 = false,
      _d1d28 = false,
      _d1d29 = false,
      _d1d20 = false,
      _d1d211 = false,
      _d1d212 = false,
      _d1d213 = false,
      _d1d214 = false;

  TextEditingController _d1d11EditingController = TextEditingController();
  TextEditingController _d1d12EditingController = TextEditingController();
  TextEditingController _d1d13EditingController = TextEditingController();
  TextEditingController _d1d14EditingController = TextEditingController();
  TextEditingController _d1d15EditingController = TextEditingController();
  TextEditingController _d1d16EditingController = TextEditingController();
  TextEditingController _d1d17EditingController = TextEditingController();
  TextEditingController _d1d18EditingController = TextEditingController();
  TextEditingController _d1d19EditingController = TextEditingController();
  TextEditingController _d1d10EditingController = TextEditingController();
  TextEditingController _d1d111EditingController = TextEditingController();
  TextEditingController _d1d112EditingController = TextEditingController();
  TextEditingController _d1d113EditingController = TextEditingController();
  TextEditingController _d1d114EditingController = TextEditingController();

  TextEditingController _d1d21EditingController = TextEditingController();
  TextEditingController _d1d22EditingController = TextEditingController();
  TextEditingController _d1d23EditingController = TextEditingController();
  TextEditingController _d1d24EditingController = TextEditingController();
  TextEditingController _d1d25EditingController = TextEditingController();
  TextEditingController _d1d26EditingController = TextEditingController();
  TextEditingController _d1d27EditingController = TextEditingController();
  TextEditingController _d1d28EditingController = TextEditingController();
  TextEditingController _d1d29EditingController = TextEditingController();
  TextEditingController _d1d20EditingController = TextEditingController();
  TextEditingController _d1d211EditingController = TextEditingController();
  TextEditingController _d1d212EditingController = TextEditingController();
  TextEditingController _d1d213EditingController = TextEditingController();
  TextEditingController _d1d214EditingController = TextEditingController();

  var _d2dList1 = [], //日照
      _d2dList2 = [], //日照
      //第一轮
      _d2d11 = false,
      _d2d12 = false,
      _d2d13 = false,
      _d2d14 = false,
      _d2d15 = false,
      _d2d16 = false,
      _d2d17 = false,
      _d2d18 = false,
      _d2d19 = false,
      _d2d10 = false,
      //第二轮
      _d2d21 = false,
      _d2d22 = false,
      _d2d23 = false,
      _d2d24 = false,
      _d2d25 = false,
      _d2d26 = false,
      _d2d27 = false,
      _d2d28 = false,
      _d2d29 = false,
      _d2d20 = false;

  TextEditingController _d2d11EditingController = TextEditingController();
  TextEditingController _d2d12EditingController = TextEditingController();
  TextEditingController _d2d13EditingController = TextEditingController();
  TextEditingController _d2d14EditingController = TextEditingController();
  TextEditingController _d2d15EditingController = TextEditingController();
  TextEditingController _d2d16EditingController = TextEditingController();
  TextEditingController _d2d17EditingController = TextEditingController();
  TextEditingController _d2d18EditingController = TextEditingController();
  TextEditingController _d2d19EditingController = TextEditingController();
  TextEditingController _d2d10EditingController = TextEditingController();

  TextEditingController _d2d21EditingController = TextEditingController();
  TextEditingController _d2d22EditingController = TextEditingController();
  TextEditingController _d2d23EditingController = TextEditingController();
  TextEditingController _d2d24EditingController = TextEditingController();
  TextEditingController _d2d25EditingController = TextEditingController();
  TextEditingController _d2d26EditingController = TextEditingController();
  TextEditingController _d2d27EditingController = TextEditingController();
  TextEditingController _d2d28EditingController = TextEditingController();
  TextEditingController _d2d29EditingController = TextEditingController();
  TextEditingController _d2d20EditingController = TextEditingController();

  var expand11 = true, expand12 = true;
  var expand21 = true, expand22 = true;

  PageState(this.rush);

  TextEditingController _kcxxEditingController = TextEditingController();
  TextEditingController _skls1EditingController = TextEditingController();
  TextEditingController _skls2EditingController = TextEditingController();

  @override
  void initState() {
    if (rush.one.kcxx != null) {
      _kcxxEditingController.value = TextEditingValue(text: rush.one.kcxx);
    }
    if (rush.one.skls != null) {
      _skls1EditingController.value = TextEditingValue(text: rush.one.skls);
    }
    if (rush.two.skls != null) {
      _skls2EditingController.value = TextEditingValue(text: rush.two.skls);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('选课信息'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 20),
          //第一轮选课
          Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
            SizedBox(width: 20.0),
            Text("▌",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlue)),
            SizedBox(width: 10.0),
            Text("第一志愿",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
          ]),
          SizedBox(height: 20),
          //课程信息1
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(children: <Widget>[
              Icon(
                Icons.info_outline,
                color: Colors.black45,
                size: 20.0,
              ),
              SizedBox(width: 20),
              Container(
                width: 260.0,
                child: TextField(
                  controller: _kcxxEditingController,
                  keyboardType: TextInputType.text,
                  decoration: new InputDecoration(
                      contentPadding: const EdgeInsets.all(10.0),
                      hintText: '课程信息（课程号或课程名称）...',
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
          //上课老师1
          Padding(
            padding: EdgeInsets.only(
                left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
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
                  controller: _skls1EditingController,
                  keyboardType: TextInputType.text,
                  decoration: new InputDecoration(
                      contentPadding: const EdgeInsets.all(10.0),
                      hintText: '上课老师（默认为空）...',
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
          //上课星期1
          MaterialButton(
              height: 50,
              elevation: 0.0,
              color: Color.fromRGBO(237, 210, 201, 1),
              textColor: Colors.white,
              child: Text(
                rush.one.skxq != null ? rush.one.skxq : '上课星期：默认',
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
                                CheckboxListTile(
                                  secondary: const Icon(
                                    Icons.trip_origin,
                                    color: Colors.lightBlue,
                                  ),
                                  title: const Text('星期一'),
                                  value: _xq11,
                                  onChanged: (bool value) {
                                    setState(() {
                                      _xq11 = value;
                                      if (value) {
                                        _xqList1.add('星期一');
                                      } else {
                                        _xqList1.remove('星期一');
                                      }
                                    });
                                  },
                                ),
                                CheckboxListTile(
                                  secondary: const Icon(
                                    Icons.trip_origin,
                                    color: Colors.lightBlue,
                                  ),
                                  title: const Text('星期二'),
                                  value: _xq12,
                                  onChanged: (bool value) {
                                    setState(() {
                                      _xq12 = value;
                                    });
                                    if (value) {
                                      _xqList1.add('星期二');
                                    } else {
                                      _xqList1.remove('星期二');
                                    }
                                  },
                                ),
                                CheckboxListTile(
                                  secondary: const Icon(
                                    Icons.trip_origin,
                                    color: Colors.lightBlue,
                                  ),
                                  title: const Text('星期三'),
                                  value: _xq13,
                                  onChanged: (bool value) {
                                    setState(() {
                                      _xq13 = value;
                                    });
                                    if (value) {
                                      _xqList1.add('星期三');
                                    } else {
                                      _xqList1.remove('星期三');
                                    }
                                  },
                                ),
                                CheckboxListTile(
                                  secondary: const Icon(
                                    Icons.trip_origin,
                                    color: Colors.lightBlue,
                                  ),
                                  title: const Text('星期四'),
                                  value: _xq14,
                                  onChanged: (bool value) {
                                    setState(() {
                                      _xq14 = value;
                                    });
                                    if (value) {
                                      _xqList1.add('星期四');
                                    } else {
                                      _xqList1.remove('星期四');
                                    }
                                  },
                                ),
                                CheckboxListTile(
                                  secondary: const Icon(
                                    Icons.trip_origin,
                                    color: Colors.lightBlue,
                                  ),
                                  title: const Text('星期五'),
                                  value: _xq15,
                                  onChanged: (bool value) {
                                    setState(() {
                                      _xq15 = value;
                                    });
                                    if (value) {
                                      _xqList1.add('星期五');
                                    } else {
                                      _xqList1.remove('星期五');
                                    }
                                  },
                                ),
                                CheckboxListTile(
                                  secondary: const Icon(
                                    Icons.trip_origin,
                                    color: Colors.lightBlue,
                                  ),
                                  title: const Text('星期六'),
                                  value: _xq16,
                                  onChanged: (bool value) {
                                    setState(() {
                                      _xq16 = value;
                                    });
                                    if (value) {
                                      _xqList1.add('星期六');
                                    } else {
                                      _xqList1.remove('星期六');
                                    }
                                  },
                                ),
                                CheckboxListTile(
                                  secondary: const Icon(
                                    Icons.trip_origin,
                                    color: Colors.lightBlue,
                                  ),
                                  title: const Text('星期日'),
                                  value: _xq17,
                                  onChanged: (bool value) {
                                    setState(() {
                                      _xq17 = value;
                                    });
                                    if (value) {
                                      _xqList1.add('星期日');
                                    } else {
                                      _xqList1.remove('星期日');
                                    }
                                  },
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white70,
                                  ),
                                  height: 50,
                                  child: Row(children: <Widget>[
                                    Expanded(
                                      child: Builder(
                                          builder: (BuildContext context) {
                                        return Container(
                                          height: 50,
                                          child: RaisedButton(
                                            color: Colors.lightBlue,
                                            onPressed: () {
                                              //TODO 设置skxq
                                              setState(() {
                                                rush.one.skxq =
                                                    _xqList1.join(" ");
                                              });
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
                  rush.one.skxq = rush.one.skxq;
                });
              }),
          SizedBox(height: 20.0),
          //上课节次1
          MaterialButton(
              height: 50,
              elevation: 0.0,
              color: Color.fromRGBO(255, 183, 223, 1),
              textColor: Colors.white,
              child: Text(
                rush.one.skjc != null ? '第' + rush.one.skjc + '节课' : '上课节次：默认',
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
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(width: 15.0),
                                      Text("▌",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.lightBlue)),
                                      SizedBox(width: 15.0),
                                      Text("上午",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15)),
                                    ]),
                                CheckboxListTile(
                                  secondary: const Icon(
                                    Icons.shutter_speed,
                                    color: Color.fromRGBO(255, 255, 255, 0),
                                  ),
                                  title: const Text('第一小节'),
                                  value: _jc11,
                                  onChanged: (bool value) {
                                    setState(() {
                                      _jc11 = value;
                                      if (value) {
                                        _jcList1.add('1');
                                      } else {
                                        _jcList1.remove('1');
                                      }
                                    });
                                  },
                                ),
                                CheckboxListTile(
                                  secondary: const Icon(
                                    Icons.shutter_speed,
                                    color: Color.fromRGBO(255, 255, 255, 0),
                                  ),
                                  title: const Text('第二小节'),
                                  value: _jc12,
                                  onChanged: (bool value) {
                                    setState(() {
                                      _jc12 = value;
                                    });
                                    if (value) {
                                      _jcList1.add('2');
                                    } else {
                                      _jcList1.remove('2');
                                    }
                                  },
                                ),
                                CheckboxListTile(
                                  secondary: const Icon(
                                    Icons.shutter_speed,
                                    color: Color.fromRGBO(255, 255, 255, 0),
                                  ),
                                  title: const Text('第三小节'),
                                  value: _jc13,
                                  onChanged: (bool value) {
                                    setState(() {
                                      _jc13 = value;
                                    });
                                    if (value) {
                                      _jcList1.add('3');
                                    } else {
                                      _jcList1.remove('3');
                                    }
                                  },
                                ),
                                CheckboxListTile(
                                  secondary: const Icon(
                                    Icons.shutter_speed,
                                    color: Color.fromRGBO(255, 255, 255, 0),
                                  ),
                                  title: const Text('第四小节'),
                                  value: _jc14,
                                  onChanged: (bool value) {
                                    setState(() {
                                      _jc14 = value;
                                    });
                                    if (value) {
                                      _jcList1.add('4');
                                    } else {
                                      _jcList1.remove('4');
                                    }
                                  },
                                ),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(width: 15.0),
                                      Text("▌",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.lightBlue)),
                                      SizedBox(width: 15.0),
                                      Text("下午",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15)),
                                    ]),
                                CheckboxListTile(
                                  secondary: const Icon(
                                    Icons.shutter_speed,
                                    color: Color.fromRGBO(255, 255, 255, 0),
                                  ),
                                  title: const Text('第五小节'),
                                  value: _jc15,
                                  onChanged: (bool value) {
                                    setState(() {
                                      _jc15 = value;
                                    });
                                    if (value) {
                                      _jcList1.add('5');
                                    } else {
                                      _jcList1.remove('5');
                                    }
                                  },
                                ),
                                CheckboxListTile(
                                  secondary: const Icon(
                                    Icons.shutter_speed,
                                    color: Color.fromRGBO(255, 255, 255, 0),
                                  ),
                                  title: const Text('第六小节'),
                                  value: _jc16,
                                  onChanged: (bool value) {
                                    setState(() {
                                      _jc16 = value;
                                    });
                                    if (value) {
                                      _jcList1.add('6');
                                    } else {
                                      _jcList1.remove('6');
                                    }
                                  },
                                ),
                                CheckboxListTile(
                                  secondary: const Icon(
                                    Icons.shutter_speed,
                                    color: Color.fromRGBO(255, 255, 255, 0),
                                  ),
                                  title: const Text('第七小节'),
                                  value: _jc17,
                                  onChanged: (bool value) {
                                    setState(() {
                                      _jc17 = value;
                                    });
                                    if (value) {
                                      _jcList1.add('7');
                                    } else {
                                      _jcList1.remove('7');
                                    }
                                  },
                                ),
                                CheckboxListTile(
                                  secondary: const Icon(
                                    Icons.shutter_speed,
                                    color: Color.fromRGBO(255, 255, 255, 0),
                                  ),
                                  title: const Text('第八小节'),
                                  value: _jc18,
                                  onChanged: (bool value) {
                                    setState(() {
                                      _jc18 = value;
                                    });
                                    if (value) {
                                      _jcList1.add('8');
                                    } else {
                                      _jcList1.remove('8');
                                    }
                                  },
                                ),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(width: 15.0),
                                      Text("▌",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.lightBlue)),
                                      SizedBox(width: 15.0),
                                      Text("晚上",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15)),
                                    ]),
                                CheckboxListTile(
                                  secondary: const Icon(
                                    Icons.shutter_speed,
                                    color: Color.fromRGBO(255, 255, 255, 0),
                                  ),
                                  title: const Text('第九小节'),
                                  value: _jc19,
                                  onChanged: (bool value) {
                                    setState(() {
                                      _jc19 = value;
                                    });
                                    if (value) {
                                      _jcList1.add('9');
                                    } else {
                                      _jcList1.remove('9');
                                    }
                                  },
                                ),
                                CheckboxListTile(
                                  secondary: const Icon(
                                    Icons.shutter_speed,
                                    color: Color.fromRGBO(255, 255, 255, 0),
                                  ),
                                  title: const Text('第十小节'),
                                  value: _jc10,
                                  onChanged: (bool value) {
                                    setState(() {
                                      _jc10 = value;
                                    });
                                    if (value) {
                                      _jcList1.add('0');
                                    } else {
                                      _jcList1.remove('0');
                                    }
                                  },
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white70,
                                  ),
                                  height: 50,
                                  child: Row(children: <Widget>[
                                    Expanded(
                                      child: Builder(
                                          builder: (BuildContext context) {
                                        return Container(
                                          height: 50,
                                          child: RaisedButton(
                                            color: Colors.lightBlue,
                                            onPressed: () {
                                              //TODO 设置skjc
                                              setState(() {
                                                rush.one.skjc =
                                                    _jcList1.join(",");
                                              });
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
                  rush.one.skjc = rush.one.skjc;
                });
              }),
          SizedBox(height: 20.0),
          //上课地点1
          Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
            expand11
                ? Expanded(
                    child: MaterialButton(
                        height: 50,
                        shape: RoundedRectangleBorder(
                            side: BorderSide.none,
                            borderRadius: BorderRadius.all(Radius.circular(0))),
                        elevation: 0.0,
                        color: Color.fromRGBO(237, 210, 201, 1),
                        textColor: Colors.white,
                        child: Text(
                          rush.one.skdd != null ? rush.one.skdd : '上课地点：日照',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                        onPressed: () async {
                          //TODO 弹出复选对话框（底部）
                          await showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return StatefulBuilder(
                                    builder: (context, setState) {
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
                                          SizedBox(height: 10),
                                          //1教学楼A
                                          CheckboxListTile(
                                            secondary: const Icon(
                                              Icons.trip_origin,
                                              color: Colors.lightBlue,
                                            ),
                                            title: Row(children: <Widget>[
                                              Text('教学楼A'),
                                              SizedBox(width: 20),
                                              Container(
                                                width: 100.0,
                                                child: TextField(
                                                  controller:
                                                      _d2d11EditingController,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration:
                                                      new InputDecoration(
                                                          contentPadding:
                                                              const EdgeInsets
                                                                  .all(10.0),
                                                          hintText: '教室...',
                                                          hintStyle: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 14),
                                                          border:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          )),
                                                ),
                                              )
                                            ]),
                                            value: _d2d11,
                                            onChanged: (bool value) {
                                              setState(() {
                                                _d2d11 = value;
                                                if (value) {
                                                  _d2dList1.add('教学楼A' +
                                                      (_d2d11EditingController
                                                                  .value.text
                                                                  .toString()
                                                                  .length <=
                                                              0
                                                          ? ''
                                                          : _d2d11EditingController
                                                              .value.text
                                                              .toString()));
                                                } else {
                                                  _d2dList1.remove('教学楼A' +
                                                      (_d2d11EditingController
                                                                  .value.text
                                                                  .toString()
                                                                  .length <=
                                                              0
                                                          ? ''
                                                          : _d2d11EditingController
                                                              .value.text
                                                              .toString()));
                                                }
                                              });
                                            },
                                          ),
                                          //2教学楼B
                                          CheckboxListTile(
                                            secondary: const Icon(
                                              Icons.trip_origin,
                                              color: Colors.lightBlue,
                                            ),
                                            title: Row(children: <Widget>[
                                              Text('教学楼B'),
                                              SizedBox(width: 20),
                                              Container(
                                                width: 100.0,
                                                child: TextField(
                                                  controller:
                                                      _d2d12EditingController,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration:
                                                      new InputDecoration(
                                                          contentPadding:
                                                              const EdgeInsets
                                                                  .all(10.0),
                                                          hintText: '教室...',
                                                          hintStyle: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 14),
                                                          border:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          )),
                                                ),
                                              )
                                            ]),
                                            value: _d2d12,
                                            onChanged: (bool value) {
                                              setState(() {
                                                _d2d12 = value;
                                                if (value) {
                                                  _d2dList1.add('教学楼B' +
                                                      (_d2d12EditingController
                                                                  .value.text
                                                                  .toString()
                                                                  .length <=
                                                              0
                                                          ? ''
                                                          : _d2d12EditingController
                                                              .value.text
                                                              .toString()));
                                                } else {
                                                  _d2dList1.remove('教学楼B' +
                                                      (_d2d12EditingController
                                                                  .value.text
                                                                  .toString()
                                                                  .length <=
                                                              0
                                                          ? ''
                                                          : _d2d12EditingController
                                                              .value.text
                                                              .toString()));
                                                }
                                              });
                                            },
                                          ),
                                          //3教学楼C
                                          CheckboxListTile(
                                            secondary: const Icon(
                                              Icons.trip_origin,
                                              color: Colors.lightBlue,
                                            ),
                                            title: Row(children: <Widget>[
                                              Text('教学楼C'),
                                              SizedBox(width: 20),
                                              Container(
                                                width: 100.0,
                                                child: TextField(
                                                  controller:
                                                      _d2d13EditingController,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration:
                                                      new InputDecoration(
                                                          contentPadding:
                                                              const EdgeInsets
                                                                  .all(10.0),
                                                          hintText: '教室...',
                                                          hintStyle: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 14),
                                                          border:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          )),
                                                ),
                                              )
                                            ]),
                                            value: _d2d13,
                                            onChanged: (bool value) {
                                              setState(() {
                                                _d2d13 = value;
                                                if (value) {
                                                  _d2dList1.add('教学楼C' +
                                                      (_d2d13EditingController
                                                                  .value.text
                                                                  .toString()
                                                                  .length <=
                                                              0
                                                          ? ''
                                                          : _d2d13EditingController
                                                              .value.text
                                                              .toString()));
                                                } else {
                                                  _d2dList1.remove('教学楼C' +
                                                      (_d2d13EditingController
                                                                  .value.text
                                                                  .toString()
                                                                  .length <=
                                                              0
                                                          ? ''
                                                          : _d2d13EditingController
                                                              .value.text
                                                              .toString()));
                                                }
                                              });
                                            },
                                          ),
                                          //4教学楼D
                                          CheckboxListTile(
                                            secondary: const Icon(
                                              Icons.trip_origin,
                                              color: Colors.lightBlue,
                                            ),
                                            title: Row(children: <Widget>[
                                              Text('教学楼D'),
                                              SizedBox(width: 20),
                                              Container(
                                                width: 100.0,
                                                child: TextField(
                                                  controller:
                                                      _d2d14EditingController,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration:
                                                      new InputDecoration(
                                                          contentPadding:
                                                              const EdgeInsets
                                                                  .all(10.0),
                                                          hintText: '教室...',
                                                          hintStyle: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 14),
                                                          border:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          )),
                                                ),
                                              )
                                            ]),
                                            value: _d2d14,
                                            onChanged: (bool value) {
                                              setState(() {
                                                _d2d14 = value;
                                                if (value) {
                                                  _d2dList1.add('教学楼D' +
                                                      (_d2d14EditingController
                                                                  .value.text
                                                                  .toString()
                                                                  .length <=
                                                              0
                                                          ? ''
                                                          : _d2d14EditingController
                                                              .value.text
                                                              .toString()));
                                                } else {
                                                  _d2dList1.remove('教学楼D' +
                                                      (_d2d14EditingController
                                                                  .value.text
                                                                  .toString()
                                                                  .length <=
                                                              0
                                                          ? ''
                                                          : _d2d14EditingController
                                                              .value.text
                                                              .toString()));
                                                }
                                              });
                                            },
                                          ),
                                          //5教学楼E
                                          CheckboxListTile(
                                            secondary: const Icon(
                                              Icons.trip_origin,
                                              color: Colors.lightBlue,
                                            ),
                                            title: Row(children: <Widget>[
                                              Text('教学楼E'),
                                              SizedBox(width: 20),
                                              Container(
                                                width: 100.0,
                                                child: TextField(
                                                  controller:
                                                      _d2d15EditingController,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration:
                                                      new InputDecoration(
                                                          contentPadding:
                                                              const EdgeInsets
                                                                  .all(10.0),
                                                          hintText: '教室...',
                                                          hintStyle: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 14),
                                                          border:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          )),
                                                ),
                                              )
                                            ]),
                                            value: _d2d15,
                                            onChanged: (bool value) {
                                              setState(() {
                                                _d2d15 = value;
                                                if (value) {
                                                  _d2dList1.add('教学楼E' +
                                                      (_d2d15EditingController
                                                                  .value.text
                                                                  .toString()
                                                                  .length <=
                                                              0
                                                          ? ''
                                                          : _d2d15EditingController
                                                              .value.text
                                                              .toString()));
                                                } else {
                                                  _d2dList1.remove('教学楼E' +
                                                      (_d2d15EditingController
                                                                  .value.text
                                                                  .toString()
                                                                  .length <=
                                                              0
                                                          ? ''
                                                          : _d2d15EditingController
                                                              .value.text
                                                              .toString()));
                                                }
                                              });
                                            },
                                          ),
                                          //6教学楼S
                                          CheckboxListTile(
                                            secondary: const Icon(
                                              Icons.trip_origin,
                                              color: Colors.lightBlue,
                                            ),
                                            title: Row(children: <Widget>[
                                              Text('教学楼S'),
                                              SizedBox(width: 20),
                                              Container(
                                                width: 100.0,
                                                child: TextField(
                                                  controller:
                                                      _d2d16EditingController,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration:
                                                      new InputDecoration(
                                                          contentPadding:
                                                              const EdgeInsets
                                                                  .all(10.0),
                                                          hintText: '教室...',
                                                          hintStyle: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 14),
                                                          border:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          )),
                                                ),
                                              )
                                            ]),
                                            value: _d2d16,
                                            onChanged: (bool value) {
                                              setState(() {
                                                _d2d16 = value;
                                                if (value) {
                                                  _d2dList1.add('教学楼S' +
                                                      (_d2d16EditingController
                                                                  .value.text
                                                                  .toString()
                                                                  .length <=
                                                              0
                                                          ? ''
                                                          : _d2d16EditingController
                                                              .value.text
                                                              .toString()));
                                                } else {
                                                  _d2dList1.remove('教学楼S' +
                                                      (_d2d16EditingController
                                                                  .value.text
                                                                  .toString()
                                                                  .length <=
                                                              0
                                                          ? ''
                                                          : _d2d16EditingController
                                                              .value.text
                                                              .toString()));
                                                }
                                              });
                                            },
                                          ),
                                          //7美术楼
                                          CheckboxListTile(
                                            secondary: const Icon(
                                              Icons.trip_origin,
                                              color: Colors.lightBlue,
                                            ),
                                            title: Row(children: <Widget>[
                                              Text('美术楼'),
                                              SizedBox(width: 20),
                                              Container(
                                                width: 100.0,
                                                child: TextField(
                                                  controller:
                                                      _d2d17EditingController,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration:
                                                      new InputDecoration(
                                                          contentPadding:
                                                              const EdgeInsets
                                                                  .all(10.0),
                                                          hintText: '教室...',
                                                          hintStyle: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 14),
                                                          border:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          )),
                                                ),
                                              )
                                            ]),
                                            value: _d2d17,
                                            onChanged: (bool value) {
                                              setState(() {
                                                _d2d17 = value;
                                                if (value) {
                                                  _d2dList1.add('美术楼' +
                                                      (_d2d17EditingController
                                                                  .value.text
                                                                  .toString()
                                                                  .length <=
                                                              0
                                                          ? ''
                                                          : _d2d17EditingController
                                                              .value.text
                                                              .toString()));
                                                } else {
                                                  _d2dList1.remove('美术楼' +
                                                      (_d2d17EditingController
                                                                  .value.text
                                                                  .toString()
                                                                  .length <=
                                                              0
                                                          ? ''
                                                          : _d2d17EditingController
                                                              .value.text
                                                              .toString()));
                                                }
                                              });
                                            },
                                          ),
                                          //8音乐楼
                                          CheckboxListTile(
                                            secondary: const Icon(
                                              Icons.trip_origin,
                                              color: Colors.lightBlue,
                                            ),
                                            title: Row(children: <Widget>[
                                              Text('音乐楼'),
                                              SizedBox(width: 20),
                                              Container(
                                                width: 100.0,
                                                child: TextField(
                                                  controller:
                                                      _d2d18EditingController,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration:
                                                      new InputDecoration(
                                                          contentPadding:
                                                              const EdgeInsets
                                                                  .all(10.0),
                                                          hintText: '教室...',
                                                          hintStyle: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 14),
                                                          border:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          )),
                                                ),
                                              )
                                            ]),
                                            value: _d2d18,
                                            onChanged: (bool value) {
                                              setState(() {
                                                _d2d18 = value;
                                                if (value) {
                                                  _d2dList1.add('音乐楼' +
                                                      (_d2d18EditingController
                                                                  .value.text
                                                                  .toString()
                                                                  .length <=
                                                              0
                                                          ? ''
                                                          : _d2d18EditingController
                                                              .value.text
                                                              .toString()));
                                                } else {
                                                  _d2dList1.remove('音乐楼' +
                                                      (_d2d18EditingController
                                                                  .value.text
                                                                  .toString()
                                                                  .length <=
                                                              0
                                                          ? ''
                                                          : _d2d18EditingController
                                                              .value.text
                                                              .toString()));
                                                }
                                              });
                                            },
                                          ),
                                          //9实验中心
                                          CheckboxListTile(
                                            secondary: const Icon(
                                              Icons.trip_origin,
                                              color: Colors.lightBlue,
                                            ),
                                            title: Row(children: <Widget>[
                                              Text('实验中心'),
                                              SizedBox(width: 20),
                                              Container(
                                                width: 100.0,
                                                child: TextField(
                                                  controller:
                                                      _d2d19EditingController,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration:
                                                      new InputDecoration(
                                                          contentPadding:
                                                              const EdgeInsets
                                                                  .all(10.0),
                                                          hintText: '教室...',
                                                          hintStyle: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 14),
                                                          border:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          )),
                                                ),
                                              )
                                            ]),
                                            value: _d2d19,
                                            onChanged: (bool value) {
                                              setState(() {
                                                _d2d19 = value;
                                                if (value) {
                                                  _d2dList1.add('实验中心' +
                                                      (_d2d19EditingController
                                                                  .value.text
                                                                  .toString()
                                                                  .length <=
                                                              0
                                                          ? ''
                                                          : _d2d19EditingController
                                                              .value.text
                                                              .toString()));
                                                } else {
                                                  _d2dList1.remove('实验中心' +
                                                      (_d2d19EditingController
                                                                  .value.text
                                                                  .toString()
                                                                  .length <=
                                                              0
                                                          ? ''
                                                          : _d2d19EditingController
                                                              .value.text
                                                              .toString()));
                                                }
                                              });
                                            },
                                          ),
                                          //10公共体育教室
                                          CheckboxListTile(
                                            secondary: const Icon(
                                              Icons.trip_origin,
                                              color: Colors.lightBlue,
                                            ),
                                            title: Row(children: <Widget>[
                                              Text('公共体育教室'),
                                              SizedBox(width: 20),
                                              Container(
                                                width: 100.0,
                                                child: TextField(
                                                  controller:
                                                      _d2d10EditingController,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration:
                                                      new InputDecoration(
                                                          contentPadding:
                                                              const EdgeInsets
                                                                  .all(10.0),
                                                          hintText: '教室...',
                                                          hintStyle: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 14),
                                                          border:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          )),
                                                ),
                                              )
                                            ]),
                                            value: _d2d10,
                                            onChanged: (bool value) {
                                              setState(() {
                                                _d2d10 = value;
                                                if (value) {
                                                  _d2dList1.add('公共体育教室' +
                                                      (_d2d10EditingController
                                                                  .value.text
                                                                  .toString()
                                                                  .length <=
                                                              0
                                                          ? ''
                                                          : _d2d10EditingController
                                                              .value.text
                                                              .toString()));
                                                } else {
                                                  _d2dList1.remove('公共体育教室' +
                                                      (_d2d10EditingController
                                                                  .value.text
                                                                  .toString()
                                                                  .length <=
                                                              0
                                                          ? ''
                                                          : _d2d10EditingController
                                                              .value.text
                                                              .toString()));
                                                }
                                              });
                                            },
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white70,
                                            ),
                                            height: 50,
                                            child: Row(children: <Widget>[
                                              Expanded(
                                                child: Builder(builder:
                                                    (BuildContext context) {
                                                  return Container(
                                                    height: 50,
                                                    child: RaisedButton(
                                                      color: Colors.lightBlue,
                                                      onPressed: () {
                                                        //TODO 设置skdd
                                                        setState(() {
                                                          rush.one.skdd =
                                                              _d2dList1
                                                                  .join(" ");
                                                        });
                                                        Navigator.pop(context);
                                                      },
                                                      child: Text(
                                                        "确定",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            color:
                                                                Colors.white),
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
                            rush.one.skdd = rush.one.skdd;
                            expand12 = false;
                          });
                        }),
                  )
                : SizedBox(height: 0, width: 0),
            expand12
                ? Expanded(
                    child: MaterialButton(
                        height: 50,
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                            side: BorderSide.none,
                            borderRadius: BorderRadius.all(Radius.circular(0))),
                        color: Color.fromRGBO(255, 183, 223, 1),
                        textColor: Colors.white,
                        child: Text(
                          rush.one.skdd != null ? rush.one.skdd : '上课地点：曲阜',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                        onPressed: () async {
                          //TODO 弹出复选对话框（底部）
                          await showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return StatefulBuilder(
                                    builder: (context, setState) {
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
                                          SizedBox(height: 10),
                                          //1西联
                                          CheckboxListTile(
                                            secondary: const Icon(
                                              Icons.trip_origin,
                                              color: Colors.lightBlue,
                                            ),
                                            title: Row(children: <Widget>[
                                              Text('西联'),
                                              SizedBox(width: 20),
                                              Container(
                                                width: 100.0,
                                                child: TextField(
                                                  controller:
                                                      _d1d11EditingController,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration:
                                                      new InputDecoration(
                                                          contentPadding:
                                                              const EdgeInsets
                                                                  .all(10.0),
                                                          hintText: '教室...',
                                                          hintStyle: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 14),
                                                          border:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          )),
                                                ),
                                              )
                                            ]),
                                            value: _d1d11,
                                            onChanged: (bool value) {
                                              setState(() {
                                                _d1d11 = value;
                                                if (value) {
                                                  if (_d1d11EditingController
                                                          .value.text
                                                          .toString()
                                                          .length <=
                                                      0) {
                                                    _d1dList1.add('西联');
                                                  } else {
                                                    var tempList =
                                                        _d1d11EditingController
                                                            .value.text
                                                            .toString()
                                                            .split(" ");
                                                    for (var s in tempList) {
                                                      _d1dList1.add('西联' + s);
                                                    }
                                                  }
                                                } else {
                                                  if (_d1d11EditingController
                                                          .value.text
                                                          .toString()
                                                          .length <=
                                                      0) {
                                                    _d1dList1.remove('西联');
                                                  } else {
                                                    var tempList =
                                                        _d1d11EditingController
                                                            .value.text
                                                            .toString()
                                                            .split(" ");
                                                    for (var s in tempList) {
                                                      _d1dList1
                                                          .remove('西联' + s);
                                                    }
                                                  }
                                                }
                                              });
                                            },
                                          ),
                                          //2生物楼
                                          CheckboxListTile(
                                            secondary: const Icon(
                                              Icons.trip_origin,
                                              color: Colors.lightBlue,
                                            ),
                                            title: Row(children: <Widget>[
                                              Text('生物楼'),
                                              SizedBox(width: 20),
                                              Container(
                                                width: 100.0,
                                                child: TextField(
                                                  controller:
                                                      _d1d12EditingController,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration:
                                                      new InputDecoration(
                                                          contentPadding:
                                                              const EdgeInsets
                                                                  .all(10.0),
                                                          hintText: '教室...',
                                                          hintStyle: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 14),
                                                          border:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          )),
                                                ),
                                              )
                                            ]),
                                            value: _d1d12,
                                            onChanged: (bool value) {
                                              setState(() {
                                                _d1d12 = value;
                                                if (value) {
                                                  if (_d1d12EditingController
                                                          .value.text
                                                          .toString()
                                                          .length <=
                                                      0) {
                                                    _d1dList1.add('生物楼');
                                                  } else {
                                                    var tempList =
                                                        _d1d12EditingController
                                                            .value.text
                                                            .toString()
                                                            .split(" ");
                                                    for (var s in tempList) {
                                                      _d1dList1.add('生物楼' + s);
                                                    }
                                                  }
                                                } else {
                                                  if (_d1d12EditingController
                                                          .value.text
                                                          .toString()
                                                          .length <=
                                                      0) {
                                                    _d1dList1.remove('生物楼');
                                                  } else {
                                                    var tempList =
                                                        _d1d12EditingController
                                                            .value.text
                                                            .toString()
                                                            .split(" ");
                                                    for (var s in tempList) {
                                                      _d1dList1
                                                          .remove('生物楼' + s);
                                                    }
                                                  }
                                                }
                                              });
                                            },
                                          ),
                                          //3外语楼
                                          CheckboxListTile(
                                            secondary: const Icon(
                                              Icons.trip_origin,
                                              color: Colors.lightBlue,
                                            ),
                                            title: Row(children: <Widget>[
                                              Text('外语楼'),
                                              SizedBox(width: 20),
                                              Container(
                                                width: 100.0,
                                                child: TextField(
                                                  controller:
                                                      _d1d13EditingController,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration:
                                                      new InputDecoration(
                                                          contentPadding:
                                                              const EdgeInsets
                                                                  .all(10.0),
                                                          hintText: '教室...',
                                                          hintStyle: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 14),
                                                          border:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          )),
                                                ),
                                              )
                                            ]),
                                            value: _d1d13,
                                            onChanged: (bool value) {
                                              setState(() {
                                                _d1d13 = value;
                                                if (value) {
                                                  if (_d1d13EditingController
                                                          .value.text
                                                          .toString()
                                                          .length <=
                                                      0) {
                                                    _d1dList1.add('外语楼');
                                                  } else {
                                                    var tempList =
                                                        _d1d13EditingController
                                                            .value.text
                                                            .toString()
                                                            .split(" ");
                                                    for (var s in tempList) {
                                                      _d1dList1.add('外语楼' + s);
                                                    }
                                                  }
                                                } else {
                                                  if (_d1d13EditingController
                                                          .value.text
                                                          .toString()
                                                          .length <=
                                                      0) {
                                                    _d1dList1.remove('外语楼');
                                                  } else {
                                                    var tempList =
                                                        _d1d13EditingController
                                                            .value.text
                                                            .toString()
                                                            .split(" ");
                                                    for (var s in tempList) {
                                                      _d1dList1
                                                          .remove('外语楼' + s);
                                                    }
                                                  }
                                                }
                                              });
                                            },
                                          ),
                                          //4物理楼
                                          CheckboxListTile(
                                            secondary: const Icon(
                                              Icons.trip_origin,
                                              color: Colors.lightBlue,
                                            ),
                                            title: Row(children: <Widget>[
                                              Text('物理楼'),
                                              SizedBox(width: 20),
                                              Container(
                                                width: 100.0,
                                                child: TextField(
                                                  controller:
                                                      _d1d14EditingController,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration:
                                                      new InputDecoration(
                                                          contentPadding:
                                                              const EdgeInsets
                                                                  .all(10.0),
                                                          hintText: '教室...',
                                                          hintStyle: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 14),
                                                          border:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          )),
                                                ),
                                              )
                                            ]),
                                            value: _d1d14,
                                            onChanged: (bool value) {
                                              setState(() {
                                                _d1d14 = value;
                                                if (value) {
                                                  if (_d1d14EditingController
                                                          .value.text
                                                          .toString()
                                                          .length <=
                                                      0) {
                                                    _d1dList1.add('物理楼');
                                                  } else {
                                                    var tempList =
                                                        _d1d14EditingController
                                                            .value.text
                                                            .toString()
                                                            .split(" ");
                                                    for (var s in tempList) {
                                                      _d1dList1.add('物理楼' + s);
                                                    }
                                                  }
                                                } else {
                                                  if (_d1d14EditingController
                                                          .value.text
                                                          .toString()
                                                          .length <=
                                                      0) {
                                                    _d1dList1.remove('物理楼');
                                                  } else {
                                                    var tempList =
                                                        _d1d14EditingController
                                                            .value.text
                                                            .toString()
                                                            .split(" ");
                                                    for (var s in tempList) {
                                                      _d1dList1
                                                          .remove('物理楼' + s);
                                                    }
                                                  }
                                                }
                                              });
                                            },
                                          ),
                                          //5数学楼
                                          CheckboxListTile(
                                            secondary: const Icon(
                                              Icons.trip_origin,
                                              color: Colors.lightBlue,
                                            ),
                                            title: Row(children: <Widget>[
                                              Text('数学楼'),
                                              SizedBox(width: 20),
                                              Container(
                                                width: 100.0,
                                                child: TextField(
                                                  controller:
                                                      _d1d15EditingController,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration:
                                                      new InputDecoration(
                                                          contentPadding:
                                                              const EdgeInsets
                                                                  .all(10.0),
                                                          hintText: '教室...',
                                                          hintStyle: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 14),
                                                          border:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          )),
                                                ),
                                              )
                                            ]),
                                            value: _d1d15,
                                            onChanged: (bool value) {
                                              setState(() {
                                                _d1d15 = value;
                                                if (value) {
                                                  if (_d1d15EditingController
                                                          .value.text
                                                          .toString()
                                                          .length <=
                                                      0) {
                                                    _d1dList1.add('数学楼');
                                                  } else {
                                                    var tempList =
                                                        _d1d15EditingController
                                                            .value.text
                                                            .toString()
                                                            .split(" ");
                                                    for (var s in tempList) {
                                                      _d1dList1.add('数学楼' + s);
                                                    }
                                                  }
                                                } else {
                                                  if (_d1d15EditingController
                                                          .value.text
                                                          .toString()
                                                          .length <=
                                                      0) {
                                                    _d1dList1.remove('数学楼');
                                                  } else {
                                                    var tempList =
                                                        _d1d15EditingController
                                                            .value.text
                                                            .toString()
                                                            .split(" ");
                                                    for (var s in tempList) {
                                                      _d1dList1
                                                          .remove('数学楼' + s);
                                                    }
                                                  }
                                                }
                                              });
                                            },
                                          ),
                                          //6文史楼
                                          CheckboxListTile(
                                            secondary: const Icon(
                                              Icons.trip_origin,
                                              color: Colors.lightBlue,
                                            ),
                                            title: Row(children: <Widget>[
                                              Text('文史楼'),
                                              SizedBox(width: 20),
                                              Container(
                                                width: 100.0,
                                                child: TextField(
                                                  controller:
                                                      _d1d16EditingController,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration:
                                                      new InputDecoration(
                                                          contentPadding:
                                                              const EdgeInsets
                                                                  .all(10.0),
                                                          hintText: '教室...',
                                                          hintStyle: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 14),
                                                          border:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          )),
                                                ),
                                              )
                                            ]),
                                            value: _d1d16,
                                            onChanged: (bool value) {
                                              setState(() {
                                                _d1d16 = value;
                                                if (value) {
                                                  if (_d1d16EditingController
                                                          .value.text
                                                          .toString()
                                                          .length <=
                                                      0) {
                                                    _d1dList1.add('文史楼');
                                                  } else {
                                                    var tempList =
                                                        _d1d16EditingController
                                                            .value.text
                                                            .toString()
                                                            .split(" ");
                                                    for (var s in tempList) {
                                                      _d1dList1.add('文史楼' + s);
                                                    }
                                                  }
                                                } else {
                                                  if (_d1d16EditingController
                                                          .value.text
                                                          .toString()
                                                          .length <=
                                                      0) {
                                                    _d1dList1.remove('文史楼');
                                                  } else {
                                                    var tempList =
                                                        _d1d16EditingController
                                                            .value.text
                                                            .toString()
                                                            .split(" ");
                                                    for (var s in tempList) {
                                                      _d1dList1
                                                          .remove('文史楼' + s);
                                                    }
                                                  }
                                                }
                                              });
                                            },
                                          ),
                                          //7书法楼
                                          CheckboxListTile(
                                            secondary: const Icon(
                                              Icons.trip_origin,
                                              color: Colors.lightBlue,
                                            ),
                                            title: Row(children: <Widget>[
                                              Text('书法楼'),
                                              SizedBox(width: 20),
                                              Container(
                                                width: 100.0,
                                                child: TextField(
                                                  controller:
                                                      _d1d17EditingController,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration:
                                                      new InputDecoration(
                                                          contentPadding:
                                                              const EdgeInsets
                                                                  .all(10.0),
                                                          hintText: '教室...',
                                                          hintStyle: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 14),
                                                          border:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          )),
                                                ),
                                              )
                                            ]),
                                            value: _d1d17,
                                            onChanged: (bool value) {
                                              setState(() {
                                                _d1d17 = value;
                                                if (value) {
                                                  if (_d1d17EditingController
                                                          .value.text
                                                          .toString()
                                                          .length <=
                                                      0) {
                                                    _d1dList1.add('书法楼');
                                                  } else {
                                                    var tempList =
                                                        _d1d17EditingController
                                                            .value.text
                                                            .toString()
                                                            .split(" ");
                                                    for (var s in tempList) {
                                                      _d1dList1.add('书法楼' + s);
                                                    }
                                                  }
                                                } else {
                                                  if (_d1d17EditingController
                                                          .value.text
                                                          .toString()
                                                          .length <=
                                                      0) {
                                                    _d1dList1.remove('书法楼');
                                                  } else {
                                                    var tempList =
                                                        _d1d17EditingController
                                                            .value.text
                                                            .toString()
                                                            .split(" ");
                                                    for (var s in tempList) {
                                                      _d1dList1
                                                          .remove('书法楼' + s);
                                                    }
                                                  }
                                                }
                                              });
                                            },
                                          ),
                                          //8教育楼
                                          CheckboxListTile(
                                            secondary: const Icon(
                                              Icons.trip_origin,
                                              color: Colors.lightBlue,
                                            ),
                                            title: Row(children: <Widget>[
                                              Text('教育楼'),
                                              SizedBox(width: 20),
                                              Container(
                                                width: 100.0,
                                                child: TextField(
                                                  controller:
                                                      _d1d18EditingController,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration:
                                                      new InputDecoration(
                                                          contentPadding:
                                                              const EdgeInsets
                                                                  .all(10.0),
                                                          hintText: '教室...',
                                                          hintStyle: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 14),
                                                          border:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          )),
                                                ),
                                              )
                                            ]),
                                            value: _d1d18,
                                            onChanged: (bool value) {
                                              setState(() {
                                                _d1d18 = value;
                                                if (value) {
                                                  if (_d1d18EditingController
                                                          .value.text
                                                          .toString()
                                                          .length <=
                                                      0) {
                                                    _d1dList1.add('教育楼');
                                                  } else {
                                                    var tempList =
                                                        _d1d18EditingController
                                                            .value.text
                                                            .toString()
                                                            .split(" ");
                                                    for (var s in tempList) {
                                                      _d1dList1.add('教育楼' + s);
                                                    }
                                                  }
                                                } else {
                                                  if (_d1d18EditingController
                                                          .value.text
                                                          .toString()
                                                          .length <=
                                                      0) {
                                                    _d1dList1.remove('教育楼');
                                                  } else {
                                                    var tempList =
                                                        _d1d18EditingController
                                                            .value.text
                                                            .toString()
                                                            .split(" ");
                                                    for (var s in tempList) {
                                                      _d1dList1
                                                          .remove('教育楼' + s);
                                                    }
                                                  }
                                                }
                                              });
                                            },
                                          ),
                                          //9化学楼
                                          CheckboxListTile(
                                            secondary: const Icon(
                                              Icons.trip_origin,
                                              color: Colors.lightBlue,
                                            ),
                                            title: Row(children: <Widget>[
                                              Text('化学楼'),
                                              SizedBox(width: 20),
                                              Container(
                                                width: 100.0,
                                                child: TextField(
                                                  controller:
                                                      _d1d19EditingController,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration:
                                                      new InputDecoration(
                                                          contentPadding:
                                                              const EdgeInsets
                                                                  .all(10.0),
                                                          hintText: '教室...',
                                                          hintStyle: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 14),
                                                          border:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          )),
                                                ),
                                              )
                                            ]),
                                            value: _d1d19,
                                            onChanged: (bool value) {
                                              setState(() {
                                                _d1d19 = value;
                                                if (value) {
                                                  if (_d1d19EditingController
                                                          .value.text
                                                          .toString()
                                                          .length <=
                                                      0) {
                                                    _d1dList1.add('化学楼');
                                                  } else {
                                                    var tempList =
                                                        _d1d19EditingController
                                                            .value.text
                                                            .toString()
                                                            .split(" ");
                                                    for (var s in tempList) {
                                                      _d1dList1.add('化学楼' + s);
                                                    }
                                                  }
                                                } else {
                                                  if (_d1d19EditingController
                                                          .value.text
                                                          .toString()
                                                          .length <=
                                                      0) {
                                                    _d1dList1.remove('化学楼');
                                                  } else {
                                                    var tempList =
                                                        _d1d19EditingController
                                                            .value.text
                                                            .toString()
                                                            .split(" ");
                                                    for (var s in tempList) {
                                                      _d1dList1
                                                          .remove('化学楼' + s);
                                                    }
                                                  }
                                                }
                                              });
                                            },
                                          ),
                                          //10体育楼
                                          CheckboxListTile(
                                            secondary: const Icon(
                                              Icons.trip_origin,
                                              color: Colors.lightBlue,
                                            ),
                                            title: Row(children: <Widget>[
                                              Text('体育楼'),
                                              SizedBox(width: 20),
                                              Container(
                                                width: 100.0,
                                                child: TextField(
                                                  controller:
                                                      _d1d10EditingController,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration:
                                                      new InputDecoration(
                                                          contentPadding:
                                                              const EdgeInsets
                                                                  .all(10.0),
                                                          hintText: '教室...',
                                                          hintStyle: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 14),
                                                          border:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          )),
                                                ),
                                              )
                                            ]),
                                            value: _d1d10,
                                            onChanged: (bool value) {
                                              setState(() {
                                                _d1d10 = value;
                                                if (value) {
                                                  if (_d1d10EditingController
                                                          .value.text
                                                          .toString()
                                                          .length <=
                                                      0) {
                                                    _d1dList1.add('体育楼');
                                                  } else {
                                                    var tempList =
                                                        _d1d10EditingController
                                                            .value.text
                                                            .toString()
                                                            .split(" ");
                                                    for (var s in tempList) {
                                                      _d1dList1.add('体育楼' + s);
                                                    }
                                                  }
                                                } else {
                                                  if (_d1d10EditingController
                                                          .value.text
                                                          .toString()
                                                          .length <=
                                                      0) {
                                                    _d1dList1.remove('体育楼');
                                                  } else {
                                                    var tempList =
                                                        _d1d10EditingController
                                                            .value.text
                                                            .toString()
                                                            .split(" ");
                                                    for (var s in tempList) {
                                                      _d1dList1
                                                          .remove('体育楼' + s);
                                                    }
                                                  }
                                                }
                                              });
                                            },
                                          ),
                                          //11老文史楼
                                          CheckboxListTile(
                                            secondary: const Icon(
                                              Icons.trip_origin,
                                              color: Colors.lightBlue,
                                            ),
                                            title: Row(children: <Widget>[
                                              Text('老文史楼'),
                                              SizedBox(width: 20),
                                              Container(
                                                width: 100.0,
                                                child: TextField(
                                                  controller:
                                                      _d1d111EditingController,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration:
                                                      new InputDecoration(
                                                          contentPadding:
                                                              const EdgeInsets
                                                                  .all(10.0),
                                                          hintText: '教室...',
                                                          hintStyle: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 14),
                                                          border:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          )),
                                                ),
                                              )
                                            ]),
                                            value: _d1d111,
                                            onChanged: (bool value) {
                                              setState(() {
                                                _d1d111 = value;
                                                if (value) {
                                                  if (_d1d111EditingController
                                                          .value.text
                                                          .toString()
                                                          .length <=
                                                      0) {
                                                    _d1dList1.add('老文史楼');
                                                  } else {
                                                    var tempList =
                                                        _d1d111EditingController
                                                            .value.text
                                                            .toString()
                                                            .split(" ");
                                                    for (var s in tempList) {
                                                      _d1dList1.add('老文史楼' + s);
                                                    }
                                                  }
                                                } else {
                                                  if (_d1d111EditingController
                                                          .value.text
                                                          .toString()
                                                          .length <=
                                                      0) {
                                                    _d1dList1.remove('老文史楼');
                                                  } else {
                                                    var tempList =
                                                        _d1d111EditingController
                                                            .value.text
                                                            .toString()
                                                            .split(" ");
                                                    for (var s in tempList) {
                                                      _d1dList1
                                                          .remove('老文史楼' + s);
                                                    }
                                                  }
                                                }
                                              });
                                            },
                                          ),
                                          //12综合教学楼
                                          CheckboxListTile(
                                            secondary: const Icon(
                                              Icons.trip_origin,
                                              color: Colors.lightBlue,
                                            ),
                                            title: Row(children: <Widget>[
                                              Text('综合教学楼'),
                                              SizedBox(width: 20),
                                              Container(
                                                width: 100.0,
                                                child: TextField(
                                                  controller:
                                                      _d1d112EditingController,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration:
                                                      new InputDecoration(
                                                          contentPadding:
                                                              const EdgeInsets
                                                                  .all(10.0),
                                                          hintText: '教室...',
                                                          hintStyle: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 14),
                                                          border:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          )),
                                                ),
                                              )
                                            ]),
                                            value: _d1d112,
                                            onChanged: (bool value) {
                                              setState(() {
                                                _d1d112 = value;
                                                if (value) {
                                                  if (_d1d112EditingController
                                                          .value.text
                                                          .toString()
                                                          .length <=
                                                      0) {
                                                    _d1dList1.add('综合教学楼');
                                                  } else {
                                                    var tempList =
                                                        _d1d112EditingController
                                                            .value.text
                                                            .toString()
                                                            .split(" ");
                                                    for (var s in tempList) {
                                                      _d1dList1
                                                          .add('综合教学楼' + s);
                                                    }
                                                  }
                                                } else {
                                                  if (_d1d112EditingController
                                                          .value.text
                                                          .toString()
                                                          .length <=
                                                      0) {
                                                    _d1dList1.remove('综合教学楼');
                                                  } else {
                                                    var tempList =
                                                        _d1d112EditingController
                                                            .value.text
                                                            .toString()
                                                            .split(" ");
                                                    for (var s in tempList) {
                                                      _d1dList1
                                                          .remove('综合教学楼' + s);
                                                    }
                                                  }
                                                }
                                              });
                                            },
                                          ),
                                          //13科技实验楼
                                          CheckboxListTile(
                                            secondary: const Icon(
                                              Icons.trip_origin,
                                              color: Colors.lightBlue,
                                            ),
                                            title: Row(children: <Widget>[
                                              Text('科技实验楼'),
                                              SizedBox(width: 20),
                                              Container(
                                                width: 100.0,
                                                child: TextField(
                                                  controller:
                                                      _d1d113EditingController,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration:
                                                      new InputDecoration(
                                                          contentPadding:
                                                              const EdgeInsets
                                                                  .all(10.0),
                                                          hintText: '教室...',
                                                          hintStyle: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 14),
                                                          border:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          )),
                                                ),
                                              )
                                            ]),
                                            value: _d1d113,
                                            onChanged: (bool value) {
                                              setState(() {
                                                _d1d113 = value;
                                                if (value) {
                                                  if (_d1d113EditingController
                                                          .value.text
                                                          .toString()
                                                          .length <=
                                                      0) {
                                                    _d1dList1.add('科技实验楼');
                                                  } else {
                                                    var tempList =
                                                        _d1d113EditingController
                                                            .value.text
                                                            .toString()
                                                            .split(" ");
                                                    for (var s in tempList) {
                                                      _d1dList1
                                                          .add('科技实验楼' + s);
                                                    }
                                                  }
                                                } else {
                                                  if (_d1d113EditingController
                                                          .value.text
                                                          .toString()
                                                          .length <=
                                                      0) {
                                                    _d1dList1.remove('科技实验楼');
                                                  } else {
                                                    var tempList =
                                                        _d1d113EditingController
                                                            .value.text
                                                            .toString()
                                                            .split(" ");
                                                    for (var s in tempList) {
                                                      _d1dList1
                                                          .remove('科技实验楼' + s);
                                                    }
                                                  }
                                                }
                                              });
                                            },
                                          ),
                                          //14实验中心A区
                                          CheckboxListTile(
                                            secondary: const Icon(
                                              Icons.trip_origin,
                                              color: Colors.lightBlue,
                                            ),
                                            title: Row(children: <Widget>[
                                              Text('实验中心A区'),
                                              SizedBox(width: 20),
                                              Container(
                                                width: 90.0,
                                                child: TextField(
                                                  controller:
                                                      _d1d114EditingController,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration:
                                                      new InputDecoration(
                                                          contentPadding:
                                                              const EdgeInsets
                                                                  .all(10.0),
                                                          hintText: '教室...',
                                                          hintStyle: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 14),
                                                          border:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          )),
                                                ),
                                              )
                                            ]),
                                            value: _d1d114,
                                            onChanged: (bool value) {
                                              setState(() {
                                                _d1d114 = value;
                                                if (value) {
                                                  if (_d1d114EditingController
                                                          .value.text
                                                          .toString()
                                                          .length <=
                                                      0) {
                                                    _d1dList1.add('实验中心A区');
                                                  } else {
                                                    var tempList =
                                                        _d1d114EditingController
                                                            .value.text
                                                            .toString()
                                                            .split(" ");
                                                    for (var s in tempList) {
                                                      _d1dList1
                                                          .add('实验中心A区' + s);
                                                    }
                                                  }
                                                } else {
                                                  if (_d1d114EditingController
                                                          .value.text
                                                          .toString()
                                                          .length <=
                                                      0) {
                                                    _d1dList1.remove('实验中心A区');
                                                  } else {
                                                    var tempList =
                                                        _d1d114EditingController
                                                            .value.text
                                                            .toString()
                                                            .split(" ");
                                                    for (var s in tempList) {
                                                      _d1dList1
                                                          .remove('实验中心A区' + s);
                                                    }
                                                  }
                                                }
                                              });
                                            },
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white70,
                                            ),
                                            height: 50,
                                            child: Row(children: <Widget>[
                                              Expanded(
                                                child: Builder(builder:
                                                    (BuildContext context) {
                                                  return Container(
                                                    height: 50,
                                                    child: RaisedButton(
                                                      color: Colors.lightBlue,
                                                      onPressed: () {
                                                        //TODO 设置skxq
                                                        setState(() {
                                                          rush.one.skdd =
                                                              _d1dList1
                                                                  .join(" ");
                                                        });
                                                        Navigator.pop(context);
                                                      },
                                                      child: Text(
                                                        "确定",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            color:
                                                                Colors.white),
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
                            rush.one.skdd = rush.one.skdd;
                            expand11 = false;
                          });
                        }),
                  )
                : SizedBox(height: 0, width: 0),
          ]),
          SizedBox(height: 40.0),
          //第二轮选课
          Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
            SizedBox(width: 20.0),
            Text("▌",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlue)),
            SizedBox(width: 10.0),
            Text(
                "备选志愿" +
                    (_kcxxEditingController.value.text.toString().length <= 0
                        ? '(暂无课程信息)'
                        : '(' +
                            _kcxxEditingController.value.text.toString() +
                            ')'),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
          ]),
          SizedBox(height: 20),
          //上课老师2
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
                  controller: _skls2EditingController,
                  keyboardType: TextInputType.text,
                  decoration: new InputDecoration(
                      contentPadding: const EdgeInsets.all(10.0),
                      hintText: '上课老师（默认为空）...',
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
          //上课星期2
          MaterialButton(
              height: 50,
              elevation: 0.0,
              color: Color.fromRGBO(237, 210, 201, 1),
              textColor: Colors.white,
              child: Text(
                rush.two.skxq != null ? rush.two.skxq : '上课星期：默认',
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
                                CheckboxListTile(
                                  secondary: const Icon(
                                    Icons.trip_origin,
                                    color: Colors.lightBlue,
                                  ),
                                  title: const Text('星期一'),
                                  value: _xq21,
                                  onChanged: (bool value) {
                                    setState(() {
                                      _xq21 = value;
                                      if (value) {
                                        _xqList2.add('星期一');
                                      } else {
                                        _xqList2.remove('星期一');
                                      }
                                    });
                                  },
                                ),
                                CheckboxListTile(
                                  secondary: const Icon(
                                    Icons.trip_origin,
                                    color: Colors.lightBlue,
                                  ),
                                  title: const Text('星期二'),
                                  value: _xq22,
                                  onChanged: (bool value) {
                                    setState(() {
                                      _xq22 = value;
                                    });
                                    if (value) {
                                      _xqList2.add('星期二');
                                    } else {
                                      _xqList2.remove('星期二');
                                    }
                                  },
                                ),
                                CheckboxListTile(
                                  secondary: const Icon(
                                    Icons.trip_origin,
                                    color: Colors.lightBlue,
                                  ),
                                  title: const Text('星期三'),
                                  value: _xq23,
                                  onChanged: (bool value) {
                                    setState(() {
                                      _xq23 = value;
                                    });
                                    if (value) {
                                      _xqList2.add('星期三');
                                    } else {
                                      _xqList2.remove('星期三');
                                    }
                                  },
                                ),
                                CheckboxListTile(
                                  secondary: const Icon(
                                    Icons.trip_origin,
                                    color: Colors.lightBlue,
                                  ),
                                  title: const Text('星期四'),
                                  value: _xq24,
                                  onChanged: (bool value) {
                                    setState(() {
                                      _xq24 = value;
                                    });
                                    if (value) {
                                      _xqList2.add('星期四');
                                    } else {
                                      _xqList2.remove('星期四');
                                    }
                                  },
                                ),
                                CheckboxListTile(
                                  secondary: const Icon(
                                    Icons.trip_origin,
                                    color: Colors.lightBlue,
                                  ),
                                  title: const Text('星期五'),
                                  value: _xq25,
                                  onChanged: (bool value) {
                                    setState(() {
                                      _xq25 = value;
                                    });
                                    if (value) {
                                      _xqList2.add('星期五');
                                    } else {
                                      _xqList2.remove('星期五');
                                    }
                                  },
                                ),
                                CheckboxListTile(
                                  secondary: const Icon(
                                    Icons.trip_origin,
                                    color: Colors.lightBlue,
                                  ),
                                  title: const Text('星期六'),
                                  value: _xq26,
                                  onChanged: (bool value) {
                                    setState(() {
                                      _xq26 = value;
                                    });
                                    if (value) {
                                      _xqList2.add('星期六');
                                    } else {
                                      _xqList2.remove('星期六');
                                    }
                                  },
                                ),
                                CheckboxListTile(
                                  secondary: const Icon(
                                    Icons.trip_origin,
                                    color: Colors.lightBlue,
                                  ),
                                  title: const Text('星期日'),
                                  value: _xq27,
                                  onChanged: (bool value) {
                                    setState(() {
                                      _xq27 = value;
                                    });
                                    if (value) {
                                      _xqList2.add('星期日');
                                    } else {
                                      _xqList2.remove('星期日');
                                    }
                                  },
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white70,
                                  ),
                                  height: 50,
                                  child: Row(children: <Widget>[
                                    Expanded(
                                      child: Builder(
                                          builder: (BuildContext context) {
                                        return Container(
                                          height: 50,
                                          child: RaisedButton(
                                            color: Colors.lightBlue,
                                            onPressed: () {
                                              //TODO 设置skxq
                                              setState(() {
                                                rush.two.skxq =
                                                    _xqList2.join(" ");
                                              });
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
                  rush.two.skxq = rush.two.skxq;
                });
              }),
          SizedBox(height: 20.0),
          //上课节次2
          MaterialButton(
              height: 50,
              elevation: 0.0,
              color: Color.fromRGBO(255, 183, 223, 1),
              textColor: Colors.white,
              child: Text(
                rush.two.skjc != null ? '第' + rush.two.skjc + '节' : '上课节次：默认',
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
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(width: 15.0),
                                      Text("▌",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.lightBlue)),
                                      SizedBox(width: 15.0),
                                      Text("上午",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15)),
                                    ]),
                                CheckboxListTile(
                                  secondary: const Icon(
                                    Icons.shutter_speed,
                                    color: Color.fromRGBO(255, 255, 255, 0),
                                  ),
                                  title: const Text('第一小节'),
                                  value: _jc21,
                                  onChanged: (bool value) {
                                    setState(() {
                                      _jc21 = value;
                                      if (value) {
                                        _jcList2.add('1');
                                      } else {
                                        _jcList2.remove('1');
                                      }
                                    });
                                  },
                                ),
                                CheckboxListTile(
                                  secondary: const Icon(
                                    Icons.shutter_speed,
                                    color: Color.fromRGBO(255, 255, 255, 0),
                                  ),
                                  title: const Text('第二小节'),
                                  value: _jc22,
                                  onChanged: (bool value) {
                                    setState(() {
                                      _jc22 = value;
                                    });
                                    if (value) {
                                      _jcList2.add('2');
                                    } else {
                                      _jcList2.remove('2');
                                    }
                                  },
                                ),
                                CheckboxListTile(
                                  secondary: const Icon(
                                    Icons.shutter_speed,
                                    color: Color.fromRGBO(255, 255, 255, 0),
                                  ),
                                  title: const Text('第三小节'),
                                  value: _jc23,
                                  onChanged: (bool value) {
                                    setState(() {
                                      _jc23 = value;
                                    });
                                    if (value) {
                                      _jcList2.add('3');
                                    } else {
                                      _jcList2.remove('3');
                                    }
                                  },
                                ),
                                CheckboxListTile(
                                  secondary: const Icon(
                                    Icons.shutter_speed,
                                    color: Color.fromRGBO(255, 255, 255, 0),
                                  ),
                                  title: const Text('第四小节'),
                                  value: _jc24,
                                  onChanged: (bool value) {
                                    setState(() {
                                      _jc24 = value;
                                    });
                                    if (value) {
                                      _jcList2.add('4');
                                    } else {
                                      _jcList2.remove('4');
                                    }
                                  },
                                ),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(width: 15.0),
                                      Text("▌",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.lightBlue)),
                                      SizedBox(width: 15.0),
                                      Text("下午",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15)),
                                    ]),
                                CheckboxListTile(
                                  secondary: const Icon(
                                    Icons.shutter_speed,
                                    color: Color.fromRGBO(255, 255, 255, 0),
                                  ),
                                  title: const Text('第五小节'),
                                  value: _jc25,
                                  onChanged: (bool value) {
                                    setState(() {
                                      _jc25 = value;
                                    });
                                    if (value) {
                                      _jcList2.add('5');
                                    } else {
                                      _jcList2.remove('5');
                                    }
                                  },
                                ),
                                CheckboxListTile(
                                  secondary: const Icon(
                                    Icons.shutter_speed,
                                    color: Color.fromRGBO(255, 255, 255, 0),
                                  ),
                                  title: const Text('第六小节'),
                                  value: _jc26,
                                  onChanged: (bool value) {
                                    setState(() {
                                      _jc26 = value;
                                    });
                                    if (value) {
                                      _jcList2.add('6');
                                    } else {
                                      _jcList2.remove('6');
                                    }
                                  },
                                ),
                                CheckboxListTile(
                                  secondary: const Icon(
                                    Icons.shutter_speed,
                                    color: Color.fromRGBO(255, 255, 255, 0),
                                  ),
                                  title: const Text('第七小节'),
                                  value: _jc27,
                                  onChanged: (bool value) {
                                    setState(() {
                                      _jc27 = value;
                                    });
                                    if (value) {
                                      _jcList2.add('7');
                                    } else {
                                      _jcList2.remove('7');
                                    }
                                  },
                                ),
                                CheckboxListTile(
                                  secondary: const Icon(
                                    Icons.shutter_speed,
                                    color: Color.fromRGBO(255, 255, 255, 0),
                                  ),
                                  title: const Text('第八小节'),
                                  value: _jc28,
                                  onChanged: (bool value) {
                                    setState(() {
                                      _jc28 = value;
                                    });
                                    if (value) {
                                      _jcList2.add('8');
                                    } else {
                                      _jcList2.remove('8');
                                    }
                                  },
                                ),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(width: 15.0),
                                      Text("▌",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.lightBlue)),
                                      SizedBox(width: 15.0),
                                      Text("晚上",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15)),
                                    ]),
                                CheckboxListTile(
                                  secondary: const Icon(
                                    Icons.shutter_speed,
                                    color: Color.fromRGBO(255, 255, 255, 0),
                                  ),
                                  title: const Text('第九小节'),
                                  value: _jc29,
                                  onChanged: (bool value) {
                                    setState(() {
                                      _jc29 = value;
                                    });
                                    if (value) {
                                      _jcList2.add('9');
                                    } else {
                                      _jcList2.remove('9');
                                    }
                                  },
                                ),
                                CheckboxListTile(
                                  secondary: const Icon(
                                    Icons.shutter_speed,
                                    color: Color.fromRGBO(255, 255, 255, 0),
                                  ),
                                  title: const Text('第十小节'),
                                  value: _jc20,
                                  onChanged: (bool value) {
                                    setState(() {
                                      _jc20 = value;
                                    });
                                    if (value) {
                                      _jcList2.add('0');
                                    } else {
                                      _jcList2.remove('0');
                                    }
                                  },
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white70,
                                  ),
                                  height: 50,
                                  child: Row(children: <Widget>[
                                    Expanded(
                                      child: Builder(
                                          builder: (BuildContext context) {
                                        return Container(
                                          height: 50,
                                          child: RaisedButton(
                                            color: Colors.lightBlue,
                                            onPressed: () {
                                              //TODO 设置skjc
                                              setState(() {
                                                rush.two.skjc =
                                                    _jcList2.join(",");
                                              });
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
                  rush.two.skjc = rush.two.skjc;
                });
              }),
          SizedBox(height: 20.0),
          //上课地点2
          Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
            expand21
                ? Expanded(
                    child: MaterialButton(
                        height: 50,
                        shape: RoundedRectangleBorder(
                            side: BorderSide.none,
                            borderRadius: BorderRadius.all(Radius.circular(0))),
                        elevation: 0.0,
                        color: Color.fromRGBO(237, 210, 201, 1),
                        textColor: Colors.white,
                        child: Text(
                          rush.two.skdd != null ? rush.two.skdd : '上课地点：日照',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                        onPressed: () async {
                          //TODO 弹出复选对话框（底部）
                          await showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return StatefulBuilder(
                                    builder: (context, setState) {
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
                                          SizedBox(height: 10),
                                          //1教学楼A
                                          CheckboxListTile(
                                            secondary: const Icon(
                                              Icons.trip_origin,
                                              color: Colors.lightBlue,
                                            ),
                                            title: Row(children: <Widget>[
                                              Text('教学楼A'),
                                              SizedBox(width: 20),
                                              Container(
                                                width: 100.0,
                                                child: TextField(
                                                  controller:
                                                      _d2d21EditingController,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration:
                                                      new InputDecoration(
                                                          contentPadding:
                                                              const EdgeInsets
                                                                  .all(10.0),
                                                          hintText: '教室...',
                                                          hintStyle: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 14),
                                                          border:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          )),
                                                ),
                                              )
                                            ]),
                                            value: _d2d21,
                                            onChanged: (bool value) {
                                              setState(() {
                                                _d2d21 = value;
                                                if (value) {
                                                  _d2dList2.add('教学楼A' +
                                                      (_d2d21EditingController
                                                                  .value.text
                                                                  .toString()
                                                                  .length <=
                                                              0
                                                          ? ''
                                                          : _d2d21EditingController
                                                              .value.text
                                                              .toString()));
                                                } else {
                                                  _d2dList2.remove('教学楼A' +
                                                      (_d2d21EditingController
                                                                  .value.text
                                                                  .toString()
                                                                  .length <=
                                                              0
                                                          ? ''
                                                          : _d2d21EditingController
                                                              .value.text
                                                              .toString()));
                                                }
                                              });
                                            },
                                          ),
                                          //2教学楼B
                                          CheckboxListTile(
                                            secondary: const Icon(
                                              Icons.trip_origin,
                                              color: Colors.lightBlue,
                                            ),
                                            title: Row(children: <Widget>[
                                              Text('教学楼B'),
                                              SizedBox(width: 20),
                                              Container(
                                                width: 100.0,
                                                child: TextField(
                                                  controller:
                                                      _d2d22EditingController,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration:
                                                      new InputDecoration(
                                                          contentPadding:
                                                              const EdgeInsets
                                                                  .all(10.0),
                                                          hintText: '教室...',
                                                          hintStyle: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 14),
                                                          border:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          )),
                                                ),
                                              )
                                            ]),
                                            value: _d2d22,
                                            onChanged: (bool value) {
                                              setState(() {
                                                _d2d22 = value;
                                                if (value) {
                                                  _d2dList2.add('教学楼B' +
                                                      (_d2d22EditingController
                                                                  .value.text
                                                                  .toString()
                                                                  .length <=
                                                              0
                                                          ? ''
                                                          : _d2d22EditingController
                                                              .value.text
                                                              .toString()));
                                                } else {
                                                  _d2dList2.remove('教学楼B' +
                                                      (_d2d22EditingController
                                                                  .value.text
                                                                  .toString()
                                                                  .length <=
                                                              0
                                                          ? ''
                                                          : _d2d22EditingController
                                                              .value.text
                                                              .toString()));
                                                }
                                              });
                                            },
                                          ),
                                          //3教学楼C
                                          CheckboxListTile(
                                            secondary: const Icon(
                                              Icons.trip_origin,
                                              color: Colors.lightBlue,
                                            ),
                                            title: Row(children: <Widget>[
                                              Text('教学楼C'),
                                              SizedBox(width: 20),
                                              Container(
                                                width: 100.0,
                                                child: TextField(
                                                  controller:
                                                      _d2d23EditingController,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration:
                                                      new InputDecoration(
                                                          contentPadding:
                                                              const EdgeInsets
                                                                  .all(10.0),
                                                          hintText: '教室...',
                                                          hintStyle: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 14),
                                                          border:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          )),
                                                ),
                                              )
                                            ]),
                                            value: _d2d23,
                                            onChanged: (bool value) {
                                              setState(() {
                                                _d2d23 = value;
                                                if (value) {
                                                  _d2dList2.add('教学楼C' +
                                                      (_d2d23EditingController
                                                                  .value.text
                                                                  .toString()
                                                                  .length <=
                                                              0
                                                          ? ''
                                                          : _d2d23EditingController
                                                              .value.text
                                                              .toString()));
                                                } else {
                                                  _d2dList2.remove('教学楼C' +
                                                      (_d2d23EditingController
                                                                  .value.text
                                                                  .toString()
                                                                  .length <=
                                                              0
                                                          ? ''
                                                          : _d2d23EditingController
                                                              .value.text
                                                              .toString()));
                                                }
                                              });
                                            },
                                          ),
                                          //4教学楼D
                                          CheckboxListTile(
                                            secondary: const Icon(
                                              Icons.trip_origin,
                                              color: Colors.lightBlue,
                                            ),
                                            title: Row(children: <Widget>[
                                              Text('教学楼D'),
                                              SizedBox(width: 20),
                                              Container(
                                                width: 100.0,
                                                child: TextField(
                                                  controller:
                                                      _d2d24EditingController,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration:
                                                      new InputDecoration(
                                                          contentPadding:
                                                              const EdgeInsets
                                                                  .all(10.0),
                                                          hintText: '教室...',
                                                          hintStyle: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 14),
                                                          border:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          )),
                                                ),
                                              )
                                            ]),
                                            value: _d2d24,
                                            onChanged: (bool value) {
                                              setState(() {
                                                _d2d24 = value;
                                                if (value) {
                                                  _d2dList2.add('教学楼D' +
                                                      (_d2d24EditingController
                                                                  .value.text
                                                                  .toString()
                                                                  .length <=
                                                              0
                                                          ? ''
                                                          : _d2d24EditingController
                                                              .value.text
                                                              .toString()));
                                                } else {
                                                  _d2dList2.remove('教学楼D' +
                                                      (_d2d24EditingController
                                                                  .value.text
                                                                  .toString()
                                                                  .length <=
                                                              0
                                                          ? ''
                                                          : _d2d24EditingController
                                                              .value.text
                                                              .toString()));
                                                }
                                              });
                                            },
                                          ),
                                          //5教学楼E
                                          CheckboxListTile(
                                            secondary: const Icon(
                                              Icons.trip_origin,
                                              color: Colors.lightBlue,
                                            ),
                                            title: Row(children: <Widget>[
                                              Text('教学楼E'),
                                              SizedBox(width: 20),
                                              Container(
                                                width: 100.0,
                                                child: TextField(
                                                  controller:
                                                      _d2d25EditingController,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration:
                                                      new InputDecoration(
                                                          contentPadding:
                                                              const EdgeInsets
                                                                  .all(10.0),
                                                          hintText: '教室...',
                                                          hintStyle: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 14),
                                                          border:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          )),
                                                ),
                                              )
                                            ]),
                                            value: _d2d25,
                                            onChanged: (bool value) {
                                              setState(() {
                                                _d2d25 = value;
                                                if (value) {
                                                  _d2dList2.add('教学楼E' +
                                                      (_d2d25EditingController
                                                                  .value.text
                                                                  .toString()
                                                                  .length <=
                                                              0
                                                          ? ''
                                                          : _d2d25EditingController
                                                              .value.text
                                                              .toString()));
                                                } else {
                                                  _d2dList2.remove('教学楼E' +
                                                      (_d2d25EditingController
                                                                  .value.text
                                                                  .toString()
                                                                  .length <=
                                                              0
                                                          ? ''
                                                          : _d2d25EditingController
                                                              .value.text
                                                              .toString()));
                                                }
                                              });
                                            },
                                          ),
                                          //6教学楼S
                                          CheckboxListTile(
                                            secondary: const Icon(
                                              Icons.trip_origin,
                                              color: Colors.lightBlue,
                                            ),
                                            title: Row(children: <Widget>[
                                              Text('教学楼S'),
                                              SizedBox(width: 20),
                                              Container(
                                                width: 100.0,
                                                child: TextField(
                                                  controller:
                                                      _d2d26EditingController,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration:
                                                      new InputDecoration(
                                                          contentPadding:
                                                              const EdgeInsets
                                                                  .all(10.0),
                                                          hintText: '教室...',
                                                          hintStyle: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 14),
                                                          border:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          )),
                                                ),
                                              )
                                            ]),
                                            value: _d2d26,
                                            onChanged: (bool value) {
                                              setState(() {
                                                _d2d26 = value;
                                                if (value) {
                                                  _d2dList2.add('教学楼S' +
                                                      (_d2d26EditingController
                                                                  .value.text
                                                                  .toString()
                                                                  .length <=
                                                              0
                                                          ? ''
                                                          : _d2d26EditingController
                                                              .value.text
                                                              .toString()));
                                                } else {
                                                  _d2dList2.remove('教学楼S' +
                                                      (_d2d26EditingController
                                                                  .value.text
                                                                  .toString()
                                                                  .length <=
                                                              0
                                                          ? ''
                                                          : _d2d26EditingController
                                                              .value.text
                                                              .toString()));
                                                }
                                              });
                                            },
                                          ),
                                          //7美术楼
                                          CheckboxListTile(
                                            secondary: const Icon(
                                              Icons.trip_origin,
                                              color: Colors.lightBlue,
                                            ),
                                            title: Row(children: <Widget>[
                                              Text('美术楼'),
                                              SizedBox(width: 20),
                                              Container(
                                                width: 100.0,
                                                child: TextField(
                                                  controller:
                                                      _d2d27EditingController,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration:
                                                      new InputDecoration(
                                                          contentPadding:
                                                              const EdgeInsets
                                                                  .all(10.0),
                                                          hintText: '教室...',
                                                          hintStyle: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 14),
                                                          border:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          )),
                                                ),
                                              )
                                            ]),
                                            value: _d2d27,
                                            onChanged: (bool value) {
                                              setState(() {
                                                _d2d27 = value;
                                                if (value) {
                                                  _d2dList2.add('美术楼' +
                                                      (_d2d27EditingController
                                                                  .value.text
                                                                  .toString()
                                                                  .length <=
                                                              0
                                                          ? ''
                                                          : _d2d27EditingController
                                                              .value.text
                                                              .toString()));
                                                } else {
                                                  _d2dList2.remove('美术楼' +
                                                      (_d2d27EditingController
                                                                  .value.text
                                                                  .toString()
                                                                  .length <=
                                                              0
                                                          ? ''
                                                          : _d2d27EditingController
                                                              .value.text
                                                              .toString()));
                                                }
                                              });
                                            },
                                          ),
                                          //8音乐楼
                                          CheckboxListTile(
                                            secondary: const Icon(
                                              Icons.trip_origin,
                                              color: Colors.lightBlue,
                                            ),
                                            title: Row(children: <Widget>[
                                              Text('音乐楼'),
                                              SizedBox(width: 20),
                                              Container(
                                                width: 100.0,
                                                child: TextField(
                                                  controller:
                                                      _d2d28EditingController,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration:
                                                      new InputDecoration(
                                                          contentPadding:
                                                              const EdgeInsets
                                                                  .all(10.0),
                                                          hintText: '教室...',
                                                          hintStyle: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 14),
                                                          border:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          )),
                                                ),
                                              )
                                            ]),
                                            value: _d2d28,
                                            onChanged: (bool value) {
                                              setState(() {
                                                _d2d28 = value;
                                                if (value) {
                                                  _d2dList2.add('音乐楼' +
                                                      (_d2d28EditingController
                                                                  .value.text
                                                                  .toString()
                                                                  .length <=
                                                              0
                                                          ? ''
                                                          : _d2d28EditingController
                                                              .value.text
                                                              .toString()));
                                                } else {
                                                  _d2dList2.remove('音乐楼' +
                                                      (_d2d28EditingController
                                                                  .value.text
                                                                  .toString()
                                                                  .length <=
                                                              0
                                                          ? ''
                                                          : _d2d28EditingController
                                                              .value.text
                                                              .toString()));
                                                }
                                              });
                                            },
                                          ),
                                          //9实验中心
                                          CheckboxListTile(
                                            secondary: const Icon(
                                              Icons.trip_origin,
                                              color: Colors.lightBlue,
                                            ),
                                            title: Row(children: <Widget>[
                                              Text('实验中心'),
                                              SizedBox(width: 20),
                                              Container(
                                                width: 100.0,
                                                child: TextField(
                                                  controller:
                                                      _d2d29EditingController,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration:
                                                      new InputDecoration(
                                                          contentPadding:
                                                              const EdgeInsets
                                                                  .all(10.0),
                                                          hintText: '教室...',
                                                          hintStyle: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 14),
                                                          border:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          )),
                                                ),
                                              )
                                            ]),
                                            value: _d2d29,
                                            onChanged: (bool value) {
                                              setState(() {
                                                _d2d29 = value;
                                                if (value) {
                                                  _d2dList2.add('实验中心' +
                                                      (_d2d29EditingController
                                                                  .value.text
                                                                  .toString()
                                                                  .length <=
                                                              0
                                                          ? ''
                                                          : _d2d29EditingController
                                                              .value.text
                                                              .toString()));
                                                } else {
                                                  _d2dList2.remove('实验中心' +
                                                      (_d2d29EditingController
                                                                  .value.text
                                                                  .toString()
                                                                  .length <=
                                                              0
                                                          ? ''
                                                          : _d2d29EditingController
                                                              .value.text
                                                              .toString()));
                                                }
                                              });
                                            },
                                          ),
                                          //10公共体育教室
                                          CheckboxListTile(
                                            secondary: const Icon(
                                              Icons.trip_origin,
                                              color: Colors.lightBlue,
                                            ),
                                            title: Row(children: <Widget>[
                                              Text('公共体育教室'),
                                              SizedBox(width: 20),
                                              Container(
                                                width: 100.0,
                                                child: TextField(
                                                  controller:
                                                      _d2d20EditingController,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration:
                                                      new InputDecoration(
                                                          contentPadding:
                                                              const EdgeInsets
                                                                  .all(10.0),
                                                          hintText: '教室...',
                                                          hintStyle: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 14),
                                                          border:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          )),
                                                ),
                                              )
                                            ]),
                                            value: _d2d20,
                                            onChanged: (bool value) {
                                              setState(() {
                                                _d2d20 = value;
                                                if (value) {
                                                  _d2dList2.add('公共体育教室' +
                                                      (_d2d20EditingController
                                                                  .value.text
                                                                  .toString()
                                                                  .length <=
                                                              0
                                                          ? ''
                                                          : _d2d20EditingController
                                                              .value.text
                                                              .toString()));
                                                } else {
                                                  _d2dList2.remove('公共体育教室' +
                                                      (_d2d20EditingController
                                                                  .value.text
                                                                  .toString()
                                                                  .length <=
                                                              0
                                                          ? ''
                                                          : _d2d20EditingController
                                                              .value.text
                                                              .toString()));
                                                }
                                              });
                                            },
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white70,
                                            ),
                                            height: 50,
                                            child: Row(children: <Widget>[
                                              Expanded(
                                                child: Builder(builder:
                                                    (BuildContext context) {
                                                  return Container(
                                                    height: 50,
                                                    child: RaisedButton(
                                                      color: Colors.lightBlue,
                                                      onPressed: () {
                                                        //TODO 设置skdd
                                                        setState(() {
                                                          rush.two.skdd =
                                                              _d2dList2
                                                                  .join(" ");
                                                        });
                                                        Navigator.pop(context);
                                                      },
                                                      child: Text(
                                                        "确定",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            color:
                                                                Colors.white),
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
                            rush.two.skdd = rush.two.skdd;
                            expand22 = false;
                          });
                        }),
                  )
                : SizedBox(height: 0, width: 0),
            expand22
                ? Expanded(
                    child: MaterialButton(
                        height: 50,
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                            side: BorderSide.none,
                            borderRadius: BorderRadius.all(Radius.circular(0))),
                        color: Color.fromRGBO(255, 183, 223, 1),
                        textColor: Colors.white,
                        child: Text(
                          rush.two.skdd != null ? rush.two.skdd : '上课地点：曲阜',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                        onPressed: () async {
                          //TODO 弹出复选对话框（底部）
                          await showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return StatefulBuilder(
                                    builder: (context, setState) {
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
                                          SizedBox(height: 10),
                                          //1西联
                                          CheckboxListTile(
                                            secondary: const Icon(
                                              Icons.trip_origin,
                                              color: Colors.lightBlue,
                                            ),
                                            title: Row(children: <Widget>[
                                              Text('西联'),
                                              SizedBox(width: 20),
                                              Container(
                                                width: 100.0,
                                                child: TextField(
                                                  controller:
                                                      _d1d21EditingController,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration:
                                                      new InputDecoration(
                                                          contentPadding:
                                                              const EdgeInsets
                                                                  .all(10.0),
                                                          hintText: '教室...',
                                                          hintStyle: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 14),
                                                          border:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          )),
                                                ),
                                              )
                                            ]),
                                            value: _d1d21,
                                            onChanged: (bool value) {
                                              setState(() {
                                                _d1d21 = value;
                                                if (value) {
                                                  if (_d1d21EditingController
                                                          .value.text
                                                          .toString()
                                                          .length <=
                                                      0) {
                                                    _d1dList2.add('西联');
                                                  } else {
                                                    var tempList =
                                                        _d1d21EditingController
                                                            .value.text
                                                            .toString()
                                                            .split(" ");
                                                    for (var s in tempList) {
                                                      _d1dList2.add('西联' + s);
                                                    }
                                                  }
                                                } else {
                                                  if (_d1d21EditingController
                                                          .value.text
                                                          .toString()
                                                          .length <=
                                                      0) {
                                                    _d1dList2.remove('西联');
                                                  } else {
                                                    var tempList =
                                                        _d1d21EditingController
                                                            .value.text
                                                            .toString()
                                                            .split(" ");
                                                    for (var s in tempList) {
                                                      _d1dList2
                                                          .remove('西联' + s);
                                                    }
                                                  }
                                                }
                                              });
                                            },
                                          ),
                                          //2生物楼
                                          CheckboxListTile(
                                            secondary: const Icon(
                                              Icons.trip_origin,
                                              color: Colors.lightBlue,
                                            ),
                                            title: Row(children: <Widget>[
                                              Text('生物楼'),
                                              SizedBox(width: 20),
                                              Container(
                                                width: 100.0,
                                                child: TextField(
                                                  controller:
                                                      _d1d22EditingController,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration:
                                                      new InputDecoration(
                                                          contentPadding:
                                                              const EdgeInsets
                                                                  .all(10.0),
                                                          hintText: '教室...',
                                                          hintStyle: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 14),
                                                          border:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          )),
                                                ),
                                              )
                                            ]),
                                            value: _d1d22,
                                            onChanged: (bool value) {
                                              setState(() {
                                                _d1d22 = value;
                                                if (value) {
                                                  if (_d1d22EditingController
                                                          .value.text
                                                          .toString()
                                                          .length <=
                                                      0) {
                                                    _d1dList2.add('生物楼');
                                                  } else {
                                                    var tempList =
                                                        _d1d22EditingController
                                                            .value.text
                                                            .toString()
                                                            .split(" ");
                                                    for (var s in tempList) {
                                                      _d1dList2.add('生物楼' + s);
                                                    }
                                                  }
                                                } else {
                                                  if (_d1d22EditingController
                                                          .value.text
                                                          .toString()
                                                          .length <=
                                                      0) {
                                                    _d1dList2.remove('生物楼');
                                                  } else {
                                                    var tempList =
                                                        _d1d22EditingController
                                                            .value.text
                                                            .toString()
                                                            .split(" ");
                                                    for (var s in tempList) {
                                                      _d1dList2
                                                          .remove('生物楼' + s);
                                                    }
                                                  }
                                                }
                                              });
                                            },
                                          ),
                                          //3外语楼
                                          CheckboxListTile(
                                            secondary: const Icon(
                                              Icons.trip_origin,
                                              color: Colors.lightBlue,
                                            ),
                                            title: Row(children: <Widget>[
                                              Text('外语楼'),
                                              SizedBox(width: 20),
                                              Container(
                                                width: 100.0,
                                                child: TextField(
                                                  controller:
                                                      _d1d23EditingController,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration:
                                                      new InputDecoration(
                                                          contentPadding:
                                                              const EdgeInsets
                                                                  .all(10.0),
                                                          hintText: '教室...',
                                                          hintStyle: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 14),
                                                          border:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          )),
                                                ),
                                              )
                                            ]),
                                            value: _d1d23,
                                            onChanged: (bool value) {
                                              setState(() {
                                                _d1d23 = value;
                                                if (value) {
                                                  if (_d1d23EditingController
                                                          .value.text
                                                          .toString()
                                                          .length <=
                                                      0) {
                                                    _d1dList2.add('外语楼');
                                                  } else {
                                                    var tempList =
                                                        _d1d23EditingController
                                                            .value.text
                                                            .toString()
                                                            .split(" ");
                                                    for (var s in tempList) {
                                                      _d1dList2.add('外语楼' + s);
                                                    }
                                                  }
                                                } else {
                                                  if (_d1d23EditingController
                                                          .value.text
                                                          .toString()
                                                          .length <=
                                                      0) {
                                                    _d1dList2.remove('外语楼');
                                                  } else {
                                                    var tempList =
                                                        _d1d23EditingController
                                                            .value.text
                                                            .toString()
                                                            .split(" ");
                                                    for (var s in tempList) {
                                                      _d1dList2
                                                          .remove('外语楼' + s);
                                                    }
                                                  }
                                                }
                                              });
                                            },
                                          ),
                                          //4物理楼
                                          CheckboxListTile(
                                            secondary: const Icon(
                                              Icons.trip_origin,
                                              color: Colors.lightBlue,
                                            ),
                                            title: Row(children: <Widget>[
                                              Text('物理楼'),
                                              SizedBox(width: 20),
                                              Container(
                                                width: 100.0,
                                                child: TextField(
                                                  controller:
                                                      _d1d24EditingController,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration:
                                                      new InputDecoration(
                                                          contentPadding:
                                                              const EdgeInsets
                                                                  .all(10.0),
                                                          hintText: '教室...',
                                                          hintStyle: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 14),
                                                          border:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          )),
                                                ),
                                              )
                                            ]),
                                            value: _d1d24,
                                            onChanged: (bool value) {
                                              setState(() {
                                                _d1d24 = value;
                                                if (value) {
                                                  if (_d1d24EditingController
                                                          .value.text
                                                          .toString()
                                                          .length <=
                                                      0) {
                                                    _d1dList2.add('物理楼');
                                                  } else {
                                                    var tempList =
                                                        _d1d24EditingController
                                                            .value.text
                                                            .toString()
                                                            .split(" ");
                                                    for (var s in tempList) {
                                                      _d1dList2.add('物理楼' + s);
                                                    }
                                                  }
                                                } else {
                                                  if (_d1d24EditingController
                                                          .value.text
                                                          .toString()
                                                          .length <=
                                                      0) {
                                                    _d1dList2.remove('物理楼');
                                                  } else {
                                                    var tempList =
                                                        _d1d24EditingController
                                                            .value.text
                                                            .toString()
                                                            .split(" ");
                                                    for (var s in tempList) {
                                                      _d1dList2
                                                          .remove('物理楼' + s);
                                                    }
                                                  }
                                                }
                                              });
                                            },
                                          ),
                                          //5数学楼
                                          CheckboxListTile(
                                            secondary: const Icon(
                                              Icons.trip_origin,
                                              color: Colors.lightBlue,
                                            ),
                                            title: Row(children: <Widget>[
                                              Text('数学楼'),
                                              SizedBox(width: 20),
                                              Container(
                                                width: 100.0,
                                                child: TextField(
                                                  controller:
                                                      _d1d25EditingController,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration:
                                                      new InputDecoration(
                                                          contentPadding:
                                                              const EdgeInsets
                                                                  .all(10.0),
                                                          hintText: '教室...',
                                                          hintStyle: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 14),
                                                          border:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          )),
                                                ),
                                              )
                                            ]),
                                            value: _d1d25,
                                            onChanged: (bool value) {
                                              setState(() {
                                                _d1d25 = value;
                                                if (value) {
                                                  if (_d1d25EditingController
                                                          .value.text
                                                          .toString()
                                                          .length <=
                                                      0) {
                                                    _d1dList2.add('数学楼');
                                                  } else {
                                                    var tempList =
                                                        _d1d25EditingController
                                                            .value.text
                                                            .toString()
                                                            .split(" ");
                                                    for (var s in tempList) {
                                                      _d1dList2.add('数学楼' + s);
                                                    }
                                                  }
                                                } else {
                                                  if (_d1d25EditingController
                                                          .value.text
                                                          .toString()
                                                          .length <=
                                                      0) {
                                                    _d1dList2.remove('数学楼');
                                                  } else {
                                                    var tempList =
                                                        _d1d25EditingController
                                                            .value.text
                                                            .toString()
                                                            .split(" ");
                                                    for (var s in tempList) {
                                                      _d1dList2
                                                          .remove('数学楼' + s);
                                                    }
                                                  }
                                                }
                                              });
                                            },
                                          ),
                                          //6文史楼
                                          CheckboxListTile(
                                            secondary: const Icon(
                                              Icons.trip_origin,
                                              color: Colors.lightBlue,
                                            ),
                                            title: Row(children: <Widget>[
                                              Text('文史楼'),
                                              SizedBox(width: 20),
                                              Container(
                                                width: 100.0,
                                                child: TextField(
                                                  controller:
                                                      _d1d26EditingController,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration:
                                                      new InputDecoration(
                                                          contentPadding:
                                                              const EdgeInsets
                                                                  .all(10.0),
                                                          hintText: '教室...',
                                                          hintStyle: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 14),
                                                          border:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          )),
                                                ),
                                              )
                                            ]),
                                            value: _d1d26,
                                            onChanged: (bool value) {
                                              setState(() {
                                                _d1d26 = value;
                                                if (value) {
                                                  if (_d1d26EditingController
                                                          .value.text
                                                          .toString()
                                                          .length <=
                                                      0) {
                                                    _d1dList2.add('文史楼');
                                                  } else {
                                                    var tempList =
                                                        _d1d26EditingController
                                                            .value.text
                                                            .toString()
                                                            .split(" ");
                                                    for (var s in tempList) {
                                                      _d1dList2.add('文史楼' + s);
                                                    }
                                                  }
                                                } else {
                                                  if (_d1d26EditingController
                                                          .value.text
                                                          .toString()
                                                          .length <=
                                                      0) {
                                                    _d1dList2.remove('文史楼');
                                                  } else {
                                                    var tempList =
                                                        _d1d26EditingController
                                                            .value.text
                                                            .toString()
                                                            .split(" ");
                                                    for (var s in tempList) {
                                                      _d1dList2
                                                          .remove('文史楼' + s);
                                                    }
                                                  }
                                                }
                                              });
                                            },
                                          ),
                                          //7书法楼
                                          CheckboxListTile(
                                            secondary: const Icon(
                                              Icons.trip_origin,
                                              color: Colors.lightBlue,
                                            ),
                                            title: Row(children: <Widget>[
                                              Text('书法楼'),
                                              SizedBox(width: 20),
                                              Container(
                                                width: 100.0,
                                                child: TextField(
                                                  controller:
                                                      _d1d27EditingController,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration:
                                                      new InputDecoration(
                                                          contentPadding:
                                                              const EdgeInsets
                                                                  .all(10.0),
                                                          hintText: '教室...',
                                                          hintStyle: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 14),
                                                          border:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          )),
                                                ),
                                              )
                                            ]),
                                            value: _d1d27,
                                            onChanged: (bool value) {
                                              setState(() {
                                                _d1d27 = value;
                                                if (value) {
                                                  if (_d1d27EditingController
                                                          .value.text
                                                          .toString()
                                                          .length <=
                                                      0) {
                                                    _d1dList2.add('书法楼');
                                                  } else {
                                                    var tempList =
                                                        _d1d27EditingController
                                                            .value.text
                                                            .toString()
                                                            .split(" ");
                                                    for (var s in tempList) {
                                                      _d1dList2.add('书法楼' + s);
                                                    }
                                                  }
                                                } else {
                                                  if (_d1d27EditingController
                                                          .value.text
                                                          .toString()
                                                          .length <=
                                                      0) {
                                                    _d1dList2.remove('书法楼');
                                                  } else {
                                                    var tempList =
                                                        _d1d27EditingController
                                                            .value.text
                                                            .toString()
                                                            .split(" ");
                                                    for (var s in tempList) {
                                                      _d1dList2
                                                          .remove('书法楼' + s);
                                                    }
                                                  }
                                                }
                                              });
                                            },
                                          ),
                                          //8教育楼
                                          CheckboxListTile(
                                            secondary: const Icon(
                                              Icons.trip_origin,
                                              color: Colors.lightBlue,
                                            ),
                                            title: Row(children: <Widget>[
                                              Text('教育楼'),
                                              SizedBox(width: 20),
                                              Container(
                                                width: 100.0,
                                                child: TextField(
                                                  controller:
                                                      _d1d28EditingController,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration:
                                                      new InputDecoration(
                                                          contentPadding:
                                                              const EdgeInsets
                                                                  .all(10.0),
                                                          hintText: '教室...',
                                                          hintStyle: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 14),
                                                          border:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          )),
                                                ),
                                              )
                                            ]),
                                            value: _d1d28,
                                            onChanged: (bool value) {
                                              setState(() {
                                                _d1d28 = value;
                                                if (value) {
                                                  if (_d1d28EditingController
                                                          .value.text
                                                          .toString()
                                                          .length <=
                                                      0) {
                                                    _d1dList2.add('教育楼');
                                                  } else {
                                                    var tempList =
                                                        _d1d28EditingController
                                                            .value.text
                                                            .toString()
                                                            .split(" ");
                                                    for (var s in tempList) {
                                                      _d1dList2.add('教育楼' + s);
                                                    }
                                                  }
                                                } else {
                                                  if (_d1d28EditingController
                                                          .value.text
                                                          .toString()
                                                          .length <=
                                                      0) {
                                                    _d1dList2.remove('教育楼');
                                                  } else {
                                                    var tempList =
                                                        _d1d28EditingController
                                                            .value.text
                                                            .toString()
                                                            .split(" ");
                                                    for (var s in tempList) {
                                                      _d1dList2
                                                          .remove('教育楼' + s);
                                                    }
                                                  }
                                                }
                                              });
                                            },
                                          ),
                                          //9化学楼
                                          CheckboxListTile(
                                            secondary: const Icon(
                                              Icons.trip_origin,
                                              color: Colors.lightBlue,
                                            ),
                                            title: Row(children: <Widget>[
                                              Text('化学楼'),
                                              SizedBox(width: 20),
                                              Container(
                                                width: 100.0,
                                                child: TextField(
                                                  controller:
                                                      _d1d29EditingController,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration:
                                                      new InputDecoration(
                                                          contentPadding:
                                                              const EdgeInsets
                                                                  .all(10.0),
                                                          hintText: '教室...',
                                                          hintStyle: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 14),
                                                          border:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          )),
                                                ),
                                              )
                                            ]),
                                            value: _d1d29,
                                            onChanged: (bool value) {
                                              setState(() {
                                                _d1d29 = value;
                                                if (value) {
                                                  if (_d1d29EditingController
                                                          .value.text
                                                          .toString()
                                                          .length <=
                                                      0) {
                                                    _d1dList2.add('化学楼');
                                                  } else {
                                                    var tempList =
                                                        _d1d29EditingController
                                                            .value.text
                                                            .toString()
                                                            .split(" ");
                                                    for (var s in tempList) {
                                                      _d1dList2.add('化学楼' + s);
                                                    }
                                                  }
                                                } else {
                                                  if (_d1d29EditingController
                                                          .value.text
                                                          .toString()
                                                          .length <=
                                                      0) {
                                                    _d1dList2.remove('化学楼');
                                                  } else {
                                                    var tempList =
                                                        _d1d29EditingController
                                                            .value.text
                                                            .toString()
                                                            .split(" ");
                                                    for (var s in tempList) {
                                                      _d1dList2
                                                          .remove('化学楼' + s);
                                                    }
                                                  }
                                                }
                                              });
                                            },
                                          ),
                                          //10体育楼
                                          CheckboxListTile(
                                            secondary: const Icon(
                                              Icons.trip_origin,
                                              color: Colors.lightBlue,
                                            ),
                                            title: Row(children: <Widget>[
                                              Text('体育楼'),
                                              SizedBox(width: 20),
                                              Container(
                                                width: 100.0,
                                                child: TextField(
                                                  controller:
                                                      _d1d20EditingController,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration:
                                                      new InputDecoration(
                                                          contentPadding:
                                                              const EdgeInsets
                                                                  .all(10.0),
                                                          hintText: '教室...',
                                                          hintStyle: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 14),
                                                          border:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          )),
                                                ),
                                              )
                                            ]),
                                            value: _d1d20,
                                            onChanged: (bool value) {
                                              setState(() {
                                                _d1d20 = value;
                                                if (value) {
                                                  if (_d1d20EditingController
                                                          .value.text
                                                          .toString()
                                                          .length <=
                                                      0) {
                                                    _d1dList2.add('体育楼');
                                                  } else {
                                                    var tempList =
                                                        _d1d20EditingController
                                                            .value.text
                                                            .toString()
                                                            .split(" ");
                                                    for (var s in tempList) {
                                                      _d1dList2.add('体育楼' + s);
                                                    }
                                                  }
                                                } else {
                                                  if (_d1d20EditingController
                                                          .value.text
                                                          .toString()
                                                          .length <=
                                                      0) {
                                                    _d1dList2.remove('体育楼');
                                                  } else {
                                                    var tempList =
                                                        _d1d20EditingController
                                                            .value.text
                                                            .toString()
                                                            .split(" ");
                                                    for (var s in tempList) {
                                                      _d1dList2
                                                          .remove('体育楼' + s);
                                                    }
                                                  }
                                                }
                                              });
                                            },
                                          ),
                                          //11老文史楼
                                          CheckboxListTile(
                                            secondary: const Icon(
                                              Icons.trip_origin,
                                              color: Colors.lightBlue,
                                            ),
                                            title: Row(children: <Widget>[
                                              Text('老文史楼'),
                                              SizedBox(width: 20),
                                              Container(
                                                width: 100.0,
                                                child: TextField(
                                                  controller:
                                                      _d1d211EditingController,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration:
                                                      new InputDecoration(
                                                          contentPadding:
                                                              const EdgeInsets
                                                                  .all(10.0),
                                                          hintText: '教室...',
                                                          hintStyle: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 14),
                                                          border:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          )),
                                                ),
                                              )
                                            ]),
                                            value: _d1d211,
                                            onChanged: (bool value) {
                                              setState(() {
                                                _d1d211 = value;
                                                if (value) {
                                                  if (_d1d211EditingController
                                                          .value.text
                                                          .toString()
                                                          .length <=
                                                      0) {
                                                    _d1dList2.add('老文史楼');
                                                  } else {
                                                    var tempList =
                                                        _d1d211EditingController
                                                            .value.text
                                                            .toString()
                                                            .split(" ");
                                                    for (var s in tempList) {
                                                      _d1dList2.add('老文史楼' + s);
                                                    }
                                                  }
                                                } else {
                                                  if (_d1d211EditingController
                                                          .value.text
                                                          .toString()
                                                          .length <=
                                                      0) {
                                                    _d1dList2.remove('老文史楼');
                                                  } else {
                                                    var tempList =
                                                        _d1d211EditingController
                                                            .value.text
                                                            .toString()
                                                            .split(" ");
                                                    for (var s in tempList) {
                                                      _d1dList2
                                                          .remove('老文史楼' + s);
                                                    }
                                                  }
                                                }
                                              });
                                            },
                                          ),
                                          //12综合教学楼
                                          CheckboxListTile(
                                            secondary: const Icon(
                                              Icons.trip_origin,
                                              color: Colors.lightBlue,
                                            ),
                                            title: Row(children: <Widget>[
                                              Text('综合教学楼'),
                                              SizedBox(width: 20),
                                              Container(
                                                width: 100.0,
                                                child: TextField(
                                                  controller:
                                                      _d1d212EditingController,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration:
                                                      new InputDecoration(
                                                          contentPadding:
                                                              const EdgeInsets
                                                                  .all(10.0),
                                                          hintText: '教室...',
                                                          hintStyle: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 14),
                                                          border:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          )),
                                                ),
                                              )
                                            ]),
                                            value: _d1d212,
                                            onChanged: (bool value) {
                                              setState(() {
                                                _d1d212 = value;
                                                if (value) {
                                                  if (_d1d212EditingController
                                                          .value.text
                                                          .toString()
                                                          .length <=
                                                      0) {
                                                    _d1dList2.add('综合教学楼');
                                                  } else {
                                                    var tempList =
                                                        _d1d212EditingController
                                                            .value.text
                                                            .toString()
                                                            .split(" ");
                                                    for (var s in tempList) {
                                                      _d1dList2
                                                          .add('综合教学楼' + s);
                                                    }
                                                  }
                                                } else {
                                                  if (_d1d212EditingController
                                                          .value.text
                                                          .toString()
                                                          .length <=
                                                      0) {
                                                    _d1dList2.remove('综合教学楼');
                                                  } else {
                                                    var tempList =
                                                        _d1d212EditingController
                                                            .value.text
                                                            .toString()
                                                            .split(" ");
                                                    for (var s in tempList) {
                                                      _d1dList2
                                                          .remove('综合教学楼' + s);
                                                    }
                                                  }
                                                }
                                              });
                                            },
                                          ),
                                          //13科技实验楼
                                          CheckboxListTile(
                                            secondary: const Icon(
                                              Icons.trip_origin,
                                              color: Colors.lightBlue,
                                            ),
                                            title: Row(children: <Widget>[
                                              Text('科技实验楼'),
                                              SizedBox(width: 20),
                                              Container(
                                                width: 100.0,
                                                child: TextField(
                                                  controller:
                                                      _d1d213EditingController,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration:
                                                      new InputDecoration(
                                                          contentPadding:
                                                              const EdgeInsets
                                                                  .all(10.0),
                                                          hintText: '教室...',
                                                          hintStyle: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 14),
                                                          border:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          )),
                                                ),
                                              )
                                            ]),
                                            value: _d1d213,
                                            onChanged: (bool value) {
                                              setState(() {
                                                _d1d213 = value;
                                                if (value) {
                                                  if (_d1d213EditingController
                                                          .value.text
                                                          .toString()
                                                          .length <=
                                                      0) {
                                                    _d1dList2.add('科技实验楼');
                                                  } else {
                                                    var tempList =
                                                        _d1d213EditingController
                                                            .value.text
                                                            .toString()
                                                            .split(" ");
                                                    for (var s in tempList) {
                                                      _d1dList2
                                                          .add('科技实验楼' + s);
                                                    }
                                                  }
                                                } else {
                                                  if (_d1d213EditingController
                                                          .value.text
                                                          .toString()
                                                          .length <=
                                                      0) {
                                                    _d1dList2.remove('科技实验楼');
                                                  } else {
                                                    var tempList =
                                                        _d1d213EditingController
                                                            .value.text
                                                            .toString()
                                                            .split(" ");
                                                    for (var s in tempList) {
                                                      _d1dList2
                                                          .remove('科技实验楼' + s);
                                                    }
                                                  }
                                                }
                                              });
                                            },
                                          ),
                                          //14实验中心A区
                                          CheckboxListTile(
                                            secondary: const Icon(
                                              Icons.trip_origin,
                                              color: Colors.lightBlue,
                                            ),
                                            title: Row(children: <Widget>[
                                              Text('实验中心A区'),
                                              SizedBox(width: 20),
                                              Container(
                                                width: 90.0,
                                                child: TextField(
                                                  controller:
                                                      _d1d214EditingController,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration:
                                                      new InputDecoration(
                                                          contentPadding:
                                                              const EdgeInsets
                                                                  .all(10.0),
                                                          hintText: '教室...',
                                                          hintStyle: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 14),
                                                          border:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          )),
                                                ),
                                              )
                                            ]),
                                            value: _d1d214,
                                            onChanged: (bool value) {
                                              setState(() {
                                                _d1d214 = value;
                                                if (value) {
                                                  if (_d1d214EditingController
                                                          .value.text
                                                          .toString()
                                                          .length <=
                                                      0) {
                                                    _d1dList2.add('实验中心A区');
                                                  } else {
                                                    var tempList =
                                                        _d1d214EditingController
                                                            .value.text
                                                            .toString()
                                                            .split(" ");
                                                    for (var s in tempList) {
                                                      _d1dList2
                                                          .add('实验中心A区' + s);
                                                    }
                                                  }
                                                } else {
                                                  if (_d1d214EditingController
                                                          .value.text
                                                          .toString()
                                                          .length <=
                                                      0) {
                                                    _d1dList2.remove('实验中心A区');
                                                  } else {
                                                    var tempList =
                                                        _d1d214EditingController
                                                            .value.text
                                                            .toString()
                                                            .split(" ");
                                                    for (var s in tempList) {
                                                      _d1dList2
                                                          .remove('实验中心A区' + s);
                                                    }
                                                  }
                                                }
                                              });
                                            },
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white70,
                                            ),
                                            height: 50,
                                            child: Row(children: <Widget>[
                                              Expanded(
                                                child: Builder(builder:
                                                    (BuildContext context) {
                                                  return Container(
                                                    height: 50,
                                                    child: RaisedButton(
                                                      color: Colors.lightBlue,
                                                      onPressed: () {
                                                        //TODO 设置skxq
                                                        setState(() {
                                                          rush.two.skdd =
                                                              _d1dList2
                                                                  .join(" ");
                                                        });
                                                        Navigator.pop(context);
                                                      },
                                                      child: Text(
                                                        "确定",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            color:
                                                                Colors.white),
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
                            rush.two.skdd = rush.two.skdd;
                            expand21 = false;
                          });
                        }),
                  )
                : SizedBox(height: 0, width: 0),
          ]),
          SizedBox(height: 20.0),
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
                    _addEditAll(context);
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

  void _addEditAll(BuildContext context) {
    _kcxx = _kcxxEditingController.value.text.toString();
    _skls1 = _skls1EditingController.value.text.toString();
    _kcxx = _kcxxEditingController.value.text.toString();
    _skls2 = _skls2EditingController.value.text.toString();

    if (_kcxx.length <= 0) {
      showDialog(
          context: context,
          child: new AlertDialog(
            title: Text(
              "信息不完善",
              style: TextStyle(color: Colors.red),
            ),
            content: Text("请输入课程信息..."),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("确定")),
            ],
          ));
    } else {
      rush.one.kcxx = _kcxx;
      rush.one.skls = _skls1;
      rush.two.kcxx = _kcxx;
      rush.two.skls = _skls2;
      Navigator.of(context).pop(this.rush);
    }
  }
}
