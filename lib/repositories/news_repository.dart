import 'package:dio/dio.dart';
import 'package:news_portal/models/news_model.dart';

class NewsRepository{
  final Dio _dio = Dio();
  
  Future<List<NewsModel>> fetchNewsModel({required String category}) async{
    final response =await _dio.get("https://inshortsapi.vercel.app/news?category=$category");
    final news = response.data['data'];
    return NewsModel.fromJsonList(news);
  }
}