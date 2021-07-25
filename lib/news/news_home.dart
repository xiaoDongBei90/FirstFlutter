import 'package:first_flutter/news/import_news.dart';
import 'package:first_flutter/news/news_head.dart';
import 'package:flutter/material.dart';

///资讯页面
class NewsHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NewsHomeState();
}

class _NewsHomeState extends State<NewsHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: SafeArea(
                child: NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool a) => [
        SliverToBoxAdapter(
          child: Column(
            children: [
              NewsHeadGridWidget(),
              BannerWidget(),
            ],
          ),
        ),
      ],
      body: ImportTabWidget(),
    ))));
  }
}

///Banner控件
class BannerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      child: Image.asset("images/2.0x/banner_news.png"),
      padding: EdgeInsets.only(top: 10),
    );
  }
}
