// ignore: file_names
class UtilisateurModel {
  int? id;
  String? email;
  String? firstName;
  String? lastName;
  String? addresse;
  String? cni;
  String? profil;
  String? password;

  UtilisateurModel(
      {this.id,
      this.email,
      this.firstName,
      this.lastName,
      this.addresse,
      this.cni,
      this.profil,
      String? password});

  UtilisateurModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    addresse = json['addresse'];
    cni = json['cni'];
    profil = json['profil'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['email'] = this.email;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['addresse'] = this.addresse;
    data['cni'] = this.cni;
    data['profil'] = this.profil;
    data['password'] = this.password;
    return data;
  }
}
