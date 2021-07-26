import 'package:first_flutter/router/ez_router.dart';
import 'package:first_flutter/splash/ez_splash.dart';
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
