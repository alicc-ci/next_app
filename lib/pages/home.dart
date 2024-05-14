import '../news_manager.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('资讯标题'),
      ),
      body: NewsManager(),
    );
  }
}
