// ignore: file_names
class ArticleModel {
  int? id;
  String? title;
  String? description;
  int? owner;
  int? price;
  String? type;
  String? image;

  ArticleModel(
      {this.id,
      this.title,
      this.description,
      this.owner,
      this.price,
      this.type,
      this.image});

  ArticleModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    owner = json['owner'];
    price = json['price'];
    type = json['type'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['description'] = this.description;
    data['owner'] = this.owner;
    data['price'] = this.price;
    data['type'] = this.type;
    data['image'] = this.image;
    return data;
  }
}
