// ignore: file_names

class ArticleModel {
  //int? id;
  String pathImage;
  String? name;
  String? evaluation;
  String? description;
  String? prix;

  ArticleModel({
    required this.pathImage,
    this.name,
    this.evaluation,
    this.description,
    this.prix,
  });
}
