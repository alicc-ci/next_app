import 'package:flutter/material.dart';

class NewsDetailPage extends StatelessWidget {
  final String title;
  final String imageUrl;
  const NewsDetailPage({super.key, required this.title, required this.imageUrl});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('详细')),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset('assets/new.jpg.png'),
          Center(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child: const Text('资讯详细页'),
            ),
          ),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(Theme.of(context).primaryColor)),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('返回'))
        ],
      ),
    );
  }
}
