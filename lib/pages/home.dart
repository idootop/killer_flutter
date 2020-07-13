import 'package:flutter/material.dart';
import 'all/rush_all_list.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/bg.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(height: 160.0),
          SizedBox(height: 300.0),
          Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          child: new AlertDialog(
                            title: Text(
                              '注意',
                              style: TextStyle(color: Colors.red),
                            ),
                            content: Text('考虑到One的一些选课逻辑尚未完善，暂不开放此功能，如需一门课程选多节，可在All选课列表内添加多个相同的课程。'),
                            actions: <Widget>[
                              FlatButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text("确定")),
                            ],
                          ));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color.fromRGBO(4, 4, 4, 0.5)),
                      height: 140.0,
                      width: 140.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 60.0,
                            width: 60.0,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              color: Colors.grey[200],
                            ),
                            child: Image.asset("images/dog.png"),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            'One',
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    )),
                GestureDetector(
                  onTap: () {
                    //点击事件
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => RushAllList()));
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color.fromRGBO(4, 4, 4, 0.5)),
                      height: 140.0,
                      width: 140.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 60.0,
                            width: 60.0,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              color: Colors.grey[200],
                            ),
                            child: Image.asset("images/cat.png"),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            'All',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                            ),
                          ),
                        ],
                      )),
                )
              ]),
        ],
      ),
    ));
  }
}
