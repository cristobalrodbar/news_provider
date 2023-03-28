import 'package:flutter/material.dart';
import 'package:news_provider/src/services/news_service.dart';
import 'package:provider/provider.dart';

class TabPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[Expanded(child: _ListaCategorias())],
    ));
  }
}

class _ListaCategorias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final categories = Provider.of<NewsService>(context).categories;

    return ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              children: <Widget>[
                Icon(categories[index].icon),
                SizedBox(height: 5),
                Text(categories[index].name)
              ],
            ),
          );
        });
  }
}
