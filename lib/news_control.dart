import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NewsControl extends StatelessWidget {
  Function addNews;
  // ignore: use_key_in_widget_constructors
  NewsControl(this.addNews);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(8.0),
        child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll(Theme.of(context).primaryColor)),
            child: const Text('添加资讯'),
            onPressed: () {
              addNews({'title': 'other', 'image': 'assets/newsl.jpg.png'});
            }));
  }
}
