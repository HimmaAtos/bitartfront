// ignore: file_names

class ArticleModel {
  int? id;
  String pathImage;
  String? name;
  String? evaluation;
  String? description;
  String? prix;
  String? tools;
  String?support;

  ArticleModel({
    this.id,
    required this.pathImage,
    this.name,
    this.evaluation,
    this.description,
    this.prix,
    this.tools,
    this.support,
  });

/*
  ArticleModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    pathImage = json['pathImage'];
    name = json['name'];
    evaluation = json['evaluation'];
    description = json['description'];
    prix = json['prix'];
  }*/
}
