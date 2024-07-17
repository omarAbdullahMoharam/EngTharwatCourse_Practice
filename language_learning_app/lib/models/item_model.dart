class ItemModel {
  final String JabTitle;
  final String EngTitle;
  final String? image;
  final String soundPath;

  const ItemModel({
    this.image,
    required this.JabTitle,
    required this.EngTitle,
    required this.soundPath,
  });
}
