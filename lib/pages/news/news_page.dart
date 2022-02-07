import 'package:flutter/material.dart';
import 'package:news_portal/common/widgets/custom_app_bar_widget.dart';
import 'package:news_portal/models/news_model.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsPage extends StatelessWidget {
  final NewsModel news;
  const NewsPage({Key? key, required this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWidget(
        title: 'News',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 38.0, vertical: 50.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                news.title,
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 10,),
              Image.network(
                news.imageUrl,
                alignment: Alignment.topCenter,
              ),
              Text(
                news.author,
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              Text(
                news.date,
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
              SizedBox(height: 20,),
              Text(
                news.content,
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              InkWell(
                child: Text('Read more...', style: TextStyle(color: Colors.blue),),
                onTap: () => launch(news.readMoreUrl),
              )
            ],
          ),
        ),
      ),
    );
  }
}
