import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class RushResult extends StatefulWidget {
  String news_url;
  String title;
  var _cookie;
  var user, pass;

  RushResult(this.news_url, this.title, this._cookie, this.user, this.pass);

  @override
  State<StatefulWidget> createState() =>
      new RushResultState(news_url, title, _cookie, this.user, this.pass);
}

class RushResultState extends State<RushResult> {
  String news_url;
  String title;
  // 标记是否是加载中
  bool loading = true;
  // 标记当前页面是否是我们自定义的回调页面
  bool isLoadingCallbackPage = false;
  GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey();
  // URL变化监听器
  StreamSubscription<String> onUrlChanged;
  // WebView加载状态变化监听器
  StreamSubscription<WebViewStateChanged> onStateChanged;
  // 插件提供的对象，该对象用于WebView的各种操作
  FlutterWebviewPlugin flutterWebViewPlugin = new FlutterWebviewPlugin();

  //cookie
  var _cookie;
  int _count = 0;
  int count = 0;
  var user, pass;

  RushResultState(
      this.news_url, this.title, this._cookie, this.user, this.pass);

  @override
  void initState() {
    onStateChanged = flutterWebViewPlugin.onStateChanged
        .listen((WebViewStateChanged state) async {
      // state.type是一个枚举类型，取值有：WebViewState.shouldStart, WebViewState.startLoad, WebViewState.finishLoad
      switch (state.type) {
        case WebViewState.shouldStart:
          // 准备加载
          setState(() async {
            loading = true;
          });
          break;
        case WebViewState.startLoad:
          // 开始加载
          break;
        case WebViewState.finishLoad:
          var url =
              await flutterWebViewPlugin.evalJavascript('window.location.href');
          if (url.contains('xsMain.jsp')) {
            if (count == 0) {
              await flutterWebViewPlugin.reloadUrl(
                  'http://zhjw.qfnu.edu.cn/jsxsd/xkgl/loadXsxkjgList?xnxqid=2019-2020-1');
              count++;
            }
          }
          // 加载完成
          setState(() {
            loading = false;
          });
          //注入js修改cookie！！！！！
          if (_count == 0) {
            var _js = '''
//美化登陆界面
var nodeList = document.getElementsByTagName("div");
for (var i = 0; i < nodeList.length; i++) {
    if (nodeList[i].className == "box_left") {
        var parent = nodeList[i].parentElement;
        parent.removeChild(nodeList[i])
    }
    if (nodeList[i].className == "box_right") {
        nodeList[i].className = 'box_center'
    }
}
var element, pElements = document.getElementsByTagName('font');
while (pElements.length > 0) {
    element = pElements[0];
    element.parentElement.removeChild(element)
}
var img = document.getElementsByClassName("img-responsive");
    img[1].src = '';
    img[0].src = ''
var box = document.getElementsByClassName("box_bt");
for (i = 0; i < 2; i++) {
    box[i].style.border = '0'
}
var a = document.getElementsByTagName("a");
for (i = 0, len = a.length; i < len; i++) {
    a[i].style.color = '#fff'
}
var element, pElements = document.getElementsByTagName('footer');
while (pElements.length > 0) {
    element = pElements[0];
    element.parentElement.removeChild(element)
}
//记住密码，懒人必备
window.onload = function () {
    var oForm = document.getElementsByClassName('login_btn')[0];
    var oUser = document.getElementById('userAccount');
    var oPswd = document.getElementById('userPassword');
    //页面初始化时
    oUser.value = localStorage.user;
    oPswd.value = localStorage.pswd;
};
            ''';
            await flutterWebViewPlugin.evalJavascript(_js);
            _count++;
          }
          break;
        default:
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> titleContent = [];
    if (loading) {
      titleContent.add(new Text(
        '加载中',
        style: new TextStyle(color: Colors.white),
      ));
      // 如果还在加载中，就在标题栏上显示一个圆形进度条
      titleContent.add(new Text(
        ' ',
        style: new TextStyle(color: Colors.white),
      ));
      titleContent.add(SpinKitChasingDots(
        color: Colors.white,
        size: 25.0,
      ));
    } else {
      titleContent.add(new Text(
        title,
        style: new TextStyle(color: Colors.white),
      ));
    }
    titleContent.add(new Container(width: 50.0));
    // WebviewScaffold是插件提供的组件，用于在页面上显示一个WebView并加载URL
    return new WebviewScaffold(
      key: scaffoldKey,
      url: news_url, // 登录的URL
      appBar: new AppBar(
        title: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: titleContent,
        ),
        iconTheme: new IconThemeData(color: Colors.white),
      ),
      withZoom: true, // 允许网页缩放
      withLocalStorage: true, // 允许LocalStorage
      withJavascript: true, // 允许执行js代码
      userAgent:
          "Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Mobile Safari/537.36",
    );
  }

  @override
  void dispose() {
    // 回收相关资源
    // Every listener should be canceled, the same should be done with this stream.
    onUrlChanged.cancel();
    onStateChanged.cancel();
    flutterWebViewPlugin.dispose();
    super.dispose();
  }
}
