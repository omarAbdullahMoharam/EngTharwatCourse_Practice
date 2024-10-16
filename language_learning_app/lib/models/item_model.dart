class ItemModel {
  final String jabTitle;
  final String engTitle;
  final String? image;
  final String soundPath;

  const ItemModel({
    this.image,
    required this.jabTitle,
    required this.engTitle,
    required this.soundPath,
  });
}
