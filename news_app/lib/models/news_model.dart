class NewsModel {
  String? title;
  String? description;
  String? urlToImage;

  NewsModel(
      {required this.title,
      required this.description,
      required this.urlToImage});

  @override
  String toString() {
    return 'NewsModel{urlToImage: $urlToImage, title: $title, description: $description}';
  }
}
