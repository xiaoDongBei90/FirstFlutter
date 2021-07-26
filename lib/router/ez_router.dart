import 'package:flutter/material.dart';

import '../ez_main.dart';
import 'router_utils.dart';

class EzRouter {
  static const String widget_detail = '/widget_detail';

  static const String nav = 'nav';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      //myapp
      case nav:
        return Left2RightRouter(child: EzMain());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
