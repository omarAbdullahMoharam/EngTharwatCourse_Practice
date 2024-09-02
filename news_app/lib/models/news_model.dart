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

  @override
  String toString() {
    return 'NewsModel{urlToImage: $urlToImage, title: $title, description: $description, url: $url}';
  }
}
