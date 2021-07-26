import 'package:first_flutter/router/ez_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'flutter_unit_text.dart';
import 'ez_paint.dart';


class EzSplash extends StatefulWidget {
  @override
  _EzSplashState createState() => _EzSplashState();
}

class _EzSplashState extends State<EzSplash> with TickerProviderStateMixin {
  late AnimationController _controller;

  ValueNotifier<bool> _animEnd = ValueNotifier<bool>(false);

  final Duration animTime = const Duration(milliseconds: 1500);
  final Duration delayTime = const Duration(milliseconds: 200);
  final Duration fadeInTime = const Duration(milliseconds: 600);

  @override
  void initState() {
    super.initState();

    // SystemUiOverlayStyle systemUiOverlayStyle =
    //     const SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    // SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);

    _controller = AnimationController(duration: animTime, vsync: this)
      ..addStatusListener(_listenStatus)
      ..forward();

    Future.delayed(delayTime).then((e) {
      _animEnd.value = true;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _listenStatus(AnimationStatus status) {
    if (status == AnimationStatus.completed) {
      Future.delayed(delayTime).then((e) {
        Navigator.of(context).pushReplacementNamed(EzRouter.nav);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final double winH = MediaQuery.of(context).size.height;
    final double winW = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          _buildFlutterLogo(),
          Container(
            width: winW,
            height: winH,
            child: CustomPaint(
              painter: UnitPainter(repaint: _controller),
            ),
          ),
          _buildFlutterUnitText(winH, winW),
          _buildHead(),
          // Positioned(bottom: 15, child: SplashBottom())
        ],
      ),
    );
  }

  Widget _buildFlutterUnitText(double winH, double winW) {
    return Positioned(
      top: winH / 1.4,
      child: ValueListenableBuilder(
        valueListenable: _animEnd,
        builder: (_, value, __) => value != null
            ? FlutterUnitText(
                text: "EzFlutter",
                color: Theme.of(context).primaryColor,
              )
            : SizedBox(),
      ),
    );
  }

  Widget _buildFlutterLogo() {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(0, 0),
        end: const Offset(0, -1.5),
      ).animate(_controller),
      child: RotationTransition(
          turns: _controller,
          child: ScaleTransition(
            scale: Tween(begin: 2.0, end: 1.0).animate(_controller),
            child: FadeTransition(
                opacity: _controller,
                child: Container(
                  height: 120,
                  child: const FlutterLogo(
                    size: 60,
                  ),
                )),
          )),
    );
  }

  Widget _buildHead() => SlideTransition(
      position: Tween<Offset>(
        end: const Offset(0, 0),
        begin: const Offset(0, -5),
      ).animate(_controller),
      child: Container(
        height: 45,
        width: 45,
        // child: Image.asset('assets/images/3.0x/music3.png'),
      ));
}
