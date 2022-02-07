import 'package:flutter/material.dart';
import 'package:news_portal/common/widgets/custom_app_bar_widget.dart';
import 'package:news_portal/models/news_model.dart';
import 'package:news_portal/pages/home/news_controller.dart';
import 'package:news_portal/pages/home/widgets/list_news_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = NewsController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWidget(
        title: 'News Portal',
      ),
      body: FutureBuilder<List<NewsModel>>(
        future: _controller.getNews(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return Center(
                child: CircularProgressIndicator(),
              );
            case ConnectionState.none:
              return Text('=(');
            default:
              if (snapshot.hasData) {
                return ListNewsWidget(news: snapshot.data ?? []);
              } else {
                if (snapshot.error is Exception) {
                  return Text('erro');
                } else {
                  return Text('outra coisa');
                }
              }
          }
        },
      ),
    );
  }
}
