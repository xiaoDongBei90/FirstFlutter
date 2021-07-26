import 'package:first_flutter/commonwidget/splash/ez_splash.dart';
import 'package:first_flutter/ez_main.dart';
import 'package:first_flutter/news/news_home.dart';
import 'package:first_flutter/router/ez_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EzFlutter',
      onGenerateRoute: EzRouter.generateRoute,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: EzSplash(),
    );
  }
}
