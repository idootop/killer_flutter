import 'pages/login.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0x00000000),
      statusBarIconBrightness: Brightness.dark,
    ));
    return MaterialApp(
      localizationsDelegates: [
        //本地化
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        //本地化配置
        const Locale('zh', 'CH'),
        const Locale('en', 'US'),
      ],
      title: 'KILLER',
      home: Login(),
    );
  }
}
