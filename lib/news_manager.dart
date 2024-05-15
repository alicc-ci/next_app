import 'package:flutter/material.dart';
import 'package:next_app/news_control.dart';
import './news.dart';

class NewsManager extends StatefulWidget {
  final Map startingNews;
  NewsManager({required this.startingNews});
  @override
  // ignore: library_private_types_in_public_api
  _NewsManagerState createState() => _NewsManagerState();
}

class _NewsManagerState extends State<NewsManager> {
  final List<Map<dynamic, dynamic>> _news = [];

  void _deleteNews(int index) {
    setState(() {
      _news.removeAt(index);
    });
  }

  @override
  void initState() {
    super.initState();
    if (widget.startingNews != {}) {
      _news.add(widget.startingNews);
    }
  }

  void _addNews(Map news) {
    setState(() {
      _news.add(news);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewsControl(_addNews),
        News(
          news: _news,
          deleteNews: _deleteNews,
        )
      ],
    );
  }
}
