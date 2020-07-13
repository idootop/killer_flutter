import 'package:flutter/material.dart';
import '../tools/http.dart';
import 'dart:convert';
import 'home.dart';
import 'web/find_password.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => new _LoginState();
}

class _LoginState extends State<Login> {
  Http loginHttp = Http();

  TextEditingController _userEditingController = TextEditingController();
  TextEditingController _passEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(body: Builder(builder: (BuildContext context) {
      return ListView(
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 80.0, 0.0, 0.0),
                  child: Text('你好',
                      style: TextStyle(
                          fontSize: 80.0, fontWeight: FontWeight.bold)),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20.0, 175.0, 0.0, 0.0),
                  child: Text('Killer',
                      style: TextStyle(
                        fontSize: 80.0,
                      )),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(210.0, 175.0, 0.0, 0.0),
                  child: Text('.',
                      style: TextStyle(
                          fontSize: 80.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.lightBlue)),
                )
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    controller: _userEditingController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: '学号',
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.lightBlue))),
                  ),
                  SizedBox(height: 20.0),
                  TextField(
                    controller: _passEditingController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        labelText: '密码',
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.lightBlue))),
                    obscureText: true,
                  ),
                  SizedBox(height: 5.0),
                  Container(
                    alignment: Alignment(1.0, 0.0),
                    padding: EdgeInsets.only(top: 15.0, left: 20.0),
                    child: InkWell(
                      onTap: () async {
                        // 忘记密码
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => FindPassword(
                                      'http://zhjw.qfnu.edu.cn/findmm.jsp',
                                      '找回密码',
                                    )));
                      },
                      child: Text(
                        '忘记密码',
                        style: TextStyle(
                            color: Colors.lightBlue,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ),
                  SizedBox(height: 40.0),
                  GestureDetector(
                    onTap: () async {
                      var _user = _userEditingController.value.text.toString();
                      var _pass = _passEditingController.value.text.toString();

                      if (_pass.length <= 7 || _user.length <= 7) {
                        myTips(context, "密码有误！",
                            "请输入新教务系统密码(8位数以上)，注意不是旧教务系统密码（身份证号后六位）。");
                      } else {
                        mySnackbar(context, '正在登陆，请稍后~~~');
                        var result = await login(context, _user, _pass);
                        if (result) {
                          //如果登陆成功
                          await Future.delayed(Duration(milliseconds: 800));
                          var result = await Http().get(
                              'https://killer.idoo.top/3.0/enter/20190822.html');
                          if (result.contains('启用')) {
                            // if(true){
                            await myTips(context, "注意！",
                                "本应用仅供学习交流使用，禁止任何形式的贩卖、商业化行为，否则一切责任自负。由使用者的不当操作或不当用途造成的一切损失，由使用者自负！请在下载安装本应用后24小时内自觉删除本应用。若您继续使用本应用则表明您已知晓并同意本声明，否则请立即退出并删除本应用！");
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => Home()));
                          } else {
                            myTips(context, "注意！",
                                "非常抱歉，Killer已停止运行，(公测结束，不再提供任何服务)\n如有疑问请与我联系：idootop@163.com");
                          }
                        }
                      }
                    },
                    child: Container(
                      height: 40.0,
                      child: Material(
                        borderRadius: BorderRadius.circular(20.0),
                        shadowColor: Colors.lightBlueAccent,
                        color: Colors.lightBlue,
                        elevation: 7.0,
                        child: Center(
                          child: Text(
                            '登录',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
        ],
      );
    }));
  }

  String b64(s) => base64Encode(utf8.encode(s));

  Future<bool> login(context, user, pass) async {
    dynamic result;
    var encoded = b64(user) + '%%%' + b64(pass);
    var data = {
      'userAccount': user,
      'userPassword': pass,
      'encoded': encoded,
    };
    result = await loginHttp.post('http://zhjw.qfnu.edu.cn/jsxsd/xk/LoginToXk',
        data: data);
    if (result.contains("请求失败")) {
      mySnackbar(context, '网络异常，错误代码0x00111');
      return false;
    }
    if (result.contains("教学一体化服务平台")) {
      mySnackbar(context, '登陆成功！≧▽≦');
      return true;
    } else {
      mySnackbar(context, '账号或密码错误,请重试~~~');
      return false;
    }
  }

  Future myTips(context, title, words) {
    return showDialog(
        context: context,
        child: new AlertDialog(
          title: Text(
            title,
            style: TextStyle(color: Colors.red),
          ),
          content: Text(words),
          // Container(
          //   words.length>=200?(height: 200,):()
          //   child: ListView(children: [Text(words)]),
          // ),
          actions: <Widget>[
            FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("确定")),
          ],
        ));
  }

  void mySnackbar(context, words) {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text(words),
      duration: Duration(milliseconds: 1000),
    ));
  }
}
