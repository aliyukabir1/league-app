class UserModel {
  final int? id;
  final String? userName, name, email, phone, website;
  Map<String, dynamic>? avatar;

  UserModel(
      {this.id,
      this.userName,
      this.name,
      this.email,
      this.phone,
      this.website,
      this.avatar});

  UserModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        email = json['email'],
        phone = json['phone'],
        website = json['website'],
        avatar = json['avatar']['medium'],
        userName = json['username'];
}
