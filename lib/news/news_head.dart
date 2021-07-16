import 'package:first_flutter/mockdata/news_mock_data.dart';
import 'package:flutter/material.dart';

///资讯头部Grid控件
class NewsHeadGridWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 4,
      childAspectRatio: 1.6,
      children: newsHeadList
          .map((e) => NewsHeadItemWidget(topItemViewModel: e))
          .toList(),
    );
  }
}

///资讯头部Grid条目控件
class NewsHeadItemWidget extends StatelessWidget {
  final TopItemViewModel topItemViewModel;

  NewsHeadItemWidget({Key? key, required this.topItemViewModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          Image.asset(
            topItemViewModel.imageAssetPath,
            width: 40,
            height: 40,
          ),
          Text(
            topItemViewModel.title,
            style: TextStyle(color: Colors.black, fontSize: 12),
          )
        ],
      ),
    );
  }
}

class TopItemViewModel {
  final String title;
  final String imageAssetPath;

  const TopItemViewModel({
    required this.title, //文本名称
    required this.imageAssetPath, //图片路径
  });
}
