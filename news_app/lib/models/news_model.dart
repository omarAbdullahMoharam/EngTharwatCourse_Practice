class NewsModel {
  String? title;
  String? description;
  String? urlToImage;
  final String url;

  NewsModel(
      {required this.url,
      required this.title,
      required this.description,
      required this.urlToImage});
//  you can make this as dynamic json implicitly as Map<String, dynamic>
  factory NewsModel.fromJson(Map<String, dynamic> json) {
    return NewsModel(
      title: json['title'],
      //  configuration for the old API Link🎯👌👌
      // description: news['description'],
      description: json['summary'] ?? '',
      // urlToImage: news['image_url'],
      urlToImage: json['image'],
      url: json['url'],
    );
  }
  // if you want to see the log data console content of the model returned
  // but now it logs as a model object🔻🔻
  // @override
  // String toString() {
  //   return 'NewsModel{urlToImage: $urlToImage, title: $title, description: $description, url: $url}';
  // }
}
