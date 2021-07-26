import 'package:date_format/date_format.dart';
import 'package:first_flutter/mockdata/news_mock_data.dart';
import 'package:flutter/material.dart';

import 'news_tab.dart';

class ImportTabWidget extends StatefulWidget {
  @override
  _ImportTabState createState() {
    return _ImportTabState();
  }
}

class _ImportTabState extends State<ImportTabWidget>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return TabsWidget(
        title: "", demos: newsTabList, tabController: _tabController);
  }

  @override
  void initState() {
    super.initState();
    this._tabController =
        new TabController(length: newsTabList.length, vsync: this);
  }

  @override
  void dispose() {
    this._tabController.dispose();
    super.dispose();
  }
}

class TabsWidget extends StatelessWidget {
  final String title;
  final List<NewsTabModel> demos;
  final TabController tabController;

  TabsWidget({
    required this.title,
    required this.demos,
    required this.tabController,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.loose,
      child: Column(
        children: [
          TabBar(
            labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            unselectedLabelStyle: TextStyle(fontSize: 16),
            controller: this.tabController,
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.orangeAccent,
            tabs: this.demos.map((item) => Tab(text: item.title)).toList(),
          ),
          Expanded(
            flex: 1,
            child: TabBarView(
              controller: this.tabController,
              children: this.demos.map((item) => item.widget).toList(),
            ),
          )
        ],
      ),
    );
  }
}

///要闻列表控件
class ImportNewsListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return ImportNewsListItem(importNewsDataModel: importNewsList[index]);
        },
        separatorBuilder: (context, index) {
          return Divider(
            height: 6,
            thickness: 1,
            indent: 4,
            endIndent: 4,
            color: Color(0x22999999),
          );
        },
        itemCount: importNewsList.length);
  }
}

///要闻列表条目控件
class ImportNewsListItem extends StatelessWidget {
  final ImportNewsDataModel importNewsDataModel;

  ImportNewsListItem({Key? key, required this.importNewsDataModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var nowDate = formatDate(DateTime.now(), [yyyy, '-', mm, '-', dd]);
    return Container(
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 3)),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Text(
                    importNewsDataModel.title,
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                ),
                Text(
                  nowDate,
                  // importNewsDataModel.date,
                  style: TextStyle(color: Colors.black, fontSize: 12),
                ),
              ],
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
          ),
          Image.asset(
            importNewsDataModel.imagePath,
            width: 120,
            height: 80,
            fit: BoxFit.cover,
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 2)),
        ],
      ),
    );
  }
}

class ImportNewsDataModel {
  final String title;
  final String date;
  final String imagePath;

  const ImportNewsDataModel({
    required this.title,
    required this.date,
    required this.imagePath,
  });
}
