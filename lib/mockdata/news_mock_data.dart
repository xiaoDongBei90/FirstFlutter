import 'package:first_flutter/news/import_news.dart';
import 'package:first_flutter/news/news_head.dart';
import 'package:first_flutter/news/news_tab.dart';

const List<TopItemViewModel> newsHeadList = [
  TopItemViewModel(title: "新股认购", imageAssetPath: "images/2.0x/td_ic_acc.png"),
  TopItemViewModel(
      title: "乙组打新", imageAssetPath: "images/2.0x/td_ic_ipo_history.png"),
  TopItemViewModel(
      title: "新股报告", imageAssetPath: "images/2.0x/td_ic_history_trade.png"),
  TopItemViewModel(
      title: "打新学堂", imageAssetPath: "images/2.0x/td_ic_fund_trans.png"),
  TopItemViewModel(
      title: "认购记录", imageAssetPath: "images/2.0x/td_ic_fund_detail.png"),
  TopItemViewModel(
      title: "新手教学", imageAssetPath: "images/2.0x/td_ic_exchange.png"),
  TopItemViewModel(
      title: "新股视频", imageAssetPath: "images/2.0x/td_ic_deposit.png"),
  TopItemViewModel(
      title: "新股咨询", imageAssetPath: "images/2.0x/td_ic_cancel_order.png"),
];

const List<ImportNewsDataModel> importNewsList = [
  ImportNewsDataModel(
      title: "彻底凉凉！累计收到雷锋精神将雷锋累计收将雷锋累计收到雷锋精神将雷锋累计收到雷锋精神将雷锋",
      date: "2021-7-7",
      imagePath: "images/2.0x/bg_news_icon.png"),
  ImportNewsDataModel(
      title: "iv好似uvhi被欺负iu去何方",
      date: "2021-7-7",
      imagePath: "images/2.0x/bg_news_icon1.png"),
  ImportNewsDataModel(
      title: "i一会开会空间的水分快速的减肥还是匡扶汉室始i一会开会空间的水分快速的减肥还是匡扶汉室始",
      date: "2021-7-7",
      imagePath: "images/2.0x/bg_news_icon2.png"),
  ImportNewsDataModel(
      title: "就哦谨哦批发价视频佛教破手机频繁的精神",
      date: "2021-7-7",
      imagePath: "images/2.0x/bg_news_icon3.png"),
  ImportNewsDataModel(
      title: "就哦谨哦批发价视频佛教破手机频繁的精神",
      date: "2021-7-7",
      imagePath: "images/2.0x/bg_news_icon3.png"),
  ImportNewsDataModel(
      title: "就哦谨哦批发价视频佛教破手机频繁的精神",
      date: "2021-7-7",
      imagePath: "images/2.0x/bg_news_icon3.png"),
  ImportNewsDataModel(
      title: "就哦谨哦批发价视频佛教破手机频繁的精神",
      date: "2021-7-7",
      imagePath: "images/2.0x/bg_news_icon3.png"),
  ImportNewsDataModel(
      title: "就哦谨哦批发价视频佛教破手机频繁的精神",
      date: "2021-7-7",
      imagePath: "images/2.0x/bg_news_icon3.png"),
  ImportNewsDataModel(
      title: "就哦谨哦批发价视频佛教破手机频繁的精神",
      date: "2021-7-7",
      imagePath: "images/2.0x/bg_news_icon3.png"),
  ImportNewsDataModel(
      title: "iv好似uvhi被欺负iu去何方",
      date: "2021-7-7",
      imagePath: "images/2.0x/bg_news_icon1.png"),
  ImportNewsDataModel(
      title: "i一会开会空间的水分快速的减肥还是匡扶汉室始i一会开会空间的水分快速的减肥还是匡扶汉室始",
      date: "2021-7-7",
      imagePath: "images/2.0x/bg_news_icon2.png"),
  ImportNewsDataModel(
      title: "就哦谨哦批发价视频佛教破手机频繁的精神",
      date: "2021-7-7",
      imagePath: "images/2.0x/bg_news_icon3.png"),
  ImportNewsDataModel(
      title: "就哦谨哦批发价视频佛教破手机频繁的精神",
      date: "2021-7-7",
      imagePath: "images/2.0x/bg_news_icon3.png"),
  ImportNewsDataModel(
      title: "就哦谨哦批发价视频佛教破手机频繁的精神",
      date: "2021-7-7",
      imagePath: "images/2.0x/bg_news_icon3.png"),
  ImportNewsDataModel(
      title: "iv好似uvhi被欺负iu去何方",
      date: "2021-7-7",
      imagePath: "images/2.0x/bg_news_icon1.png"),
  ImportNewsDataModel(
      title: "i一会开会空间的水分快速的减肥还是匡扶汉室始i一会开会空间的水分快速的减肥还是匡扶汉室始",
      date: "2021-7-7",
      imagePath: "images/2.0x/bg_news_icon2.png"),
  ImportNewsDataModel(
      title: "就哦谨哦批发价视频佛教破手机频繁的精神",
      date: "2021-7-7",
      imagePath: "images/2.0x/bg_news_icon3.png"),
  ImportNewsDataModel(
      title: "就哦谨哦批发价视频佛教破手机频繁的精神",
      date: "2021-7-7",
      imagePath: "images/2.0x/bg_news_icon3.png"),
  ImportNewsDataModel(
      title: "就哦谨哦批发价视频佛教破手机频繁的精神",
      date: "2021-7-7",
      imagePath: "images/2.0x/bg_news_icon3.png"),
  ImportNewsDataModel(
      title: "就哦谨哦批发价视频佛教破手机频繁的精神",
      date: "2021-7-7",
      imagePath: "images/2.0x/bg_news_icon3.png"),
  ImportNewsDataModel(
      title: "就哦谨哦批发价视频佛教破手机频繁的精神",
      date: "2021-7-7",
      imagePath: "images/2.0x/bg_news_icon3.png"),
];

List<NewsTabModel> newsTabList = [
  NewsTabModel(tabTitle: "要闻", widget: ImportNewsListWidget()),
  NewsTabModel(tabTitle: "自选", widget: ImportNewsListWidget()),
  NewsTabModel(tabTitle: "新股", widget: ImportNewsListWidget()),
  NewsTabModel(tabTitle: "7x24", widget: ImportNewsListWidget()),
];
