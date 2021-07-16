import 'package:flutter/cupertino.dart';

class NewsTabModel {
  final String tabTitle;
  final Widget widget;

  const NewsTabModel({required this.tabTitle, required this.widget});

  get title => tabTitle;
}
