import 'package:flutter/material.dart';
import 'package:news_portal/models/news_model.dart';
import 'package:news_portal/pages/news/news_page.dart';

import 'pages/home/home_page.dart';

class Routes{
  static Route<dynamic> generateRoute(RouteSettings settings){
    final routes = <String,WidgetBuilder>{
      '/' : (context) => HomePage(),
      '/news' : (context) => NewsPage(news: settings.arguments as NewsModel),
    };
    WidgetBuilder? builder = routes[settings.name!];
    return MaterialPageRoute(builder: (ctx) => builder!(ctx), settings: settings);
  }

}