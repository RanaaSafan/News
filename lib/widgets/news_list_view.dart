// NewsListView.dart

import 'package:flutter/material.dart';
import 'package:new_app/models/articles_model.dart';
import 'package:new_app/service/newsService.dart';
import '../widgets/news_tile.dart';

class NewsListView extends StatefulWidget {
  final String country;
  final String category;

  const NewsListView({Key? key, required this.country, required this.category}) : super(key: key);

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  List<ArticlesModel> data = [];

  @override
  void initState() {
    super.initState();
    getNews();
  }

  Future<void> getNews() async {
    data = await NewsService().getNewsByCategory(widget.category, widget.country);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
            (context, index) {
          return NewsTile(articlesModel: data[index]);
        },
        childCount: data.length,
      ),
    );
  }
}
