class NewsModel {
  final String author;
  final String content;
  final String date;
  final String imageUrl;
  final String readMoreUrl;
  final String time;
  final String title;
  final String url;

  NewsModel({required this.author, required this.content, required this.date, required this.imageUrl, required this.readMoreUrl, required this.time, required this.title, required this.url});

  factory NewsModel.fromJson(json){
    return NewsModel(
      author: json['author'] ?? '',
      content: json['content'] ?? '',
      date: json['date'] ?? '',
      imageUrl: json['imageUrl'] ?? '',
      readMoreUrl: json['readMoreUrl'] ?? '',
      time: json['time'] ?? '',
      title: json['title'] ?? '',
      url: json['url'] ?? '',
    );
  }

  static List<NewsModel> fromJsonList(List<dynamic>? json) => json?.map((i) => NewsModel.fromJson(i)).toList()??[];

}