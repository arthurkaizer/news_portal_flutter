import 'package:flutter/material.dart';
import 'package:news_portal/models/news_model.dart';

class ListNewsWidget extends StatelessWidget {
  final List<NewsModel> news;
  const ListNewsWidget({Key? key, required this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: news.length,
      itemBuilder: (context, index) {
        final currentNews = news[index];
        return ListTile(
          contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 15),
          leading: Image.network(currentNews.imageUrl, height: 70, width: 70,fit: BoxFit.fill,),
          title: Text(currentNews.title),
          subtitle: Text(currentNews.date),
          onTap: () => Navigator.of(context)
              .pushNamed('/news', arguments: currentNews),
        );
      },
    );
  }
}
