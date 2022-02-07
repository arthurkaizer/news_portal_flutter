import 'package:news_portal/models/news_model.dart';
import 'package:news_portal/repositories/news_repository.dart';

class NewsController{
  final _repository = NewsRepository();

  Future<List<NewsModel>> getNews() async{
    return await _repository.fetchNewsModel(category: 'all').onError((error, stackTrace) => throw Error());
  }
}