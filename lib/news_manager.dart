import 'package:flutter/material.dart';
import 'package:next_app/news_control.dart';
import './news.dart';

class NewsManager extends StatefulWidget {
  final String startingNews;
  NewsManager({this.startingNews = ''});
  _NewsManagerState createState() => _NewsManagerState();
}

class _NewsManagerState extends State<NewsManager> {
  final List<String> _news = [];

  @override
  void initState() {
    super.initState();
    if (widget.startingNews != '') {
      _news.add(widget.startingNews);
    }
  }

  void _addNews(String news) {
    setState(() {
      _news.add(news);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[NewsControl(_addNews), News(_news)],
    );
  }
}
