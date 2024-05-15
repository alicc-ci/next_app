import 'package:flutter/material.dart';
import 'package:next_app/pages/news_detial.dart';

class News extends StatelessWidget {
  final List<Map<dynamic, dynamic>> news;
  News([this.news = const []]);

//生成图片
  Widget _buildNewItem(context, index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('assets/newsl.jpg.png'),
          Text(news[index]['title'],),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton(
                child: const Text('详细'),
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                  return NewsDetailPage(
                    title: news[index]['title'],
                    imageUrl: news[index]['image'],
                  );
                })),
              )
            ],
          )
        ],
      ),
    );
  }

//具体的列表内容的构造
  Widget buildNewsList() {
    Widget newsCard;
    newsCard = const Center(child: Text('没有找到news'));
    if (news.isNotEmpty) {
      newsCard = Expanded(
        child: ListView.builder(
          itemBuilder: _buildNewItem,
          itemCount: news.length,
        ),
      );
    }
    return newsCard;
  }

//构造的方法
  @override
  Widget build(BuildContext context) {
    return buildNewsList();
  }
}
