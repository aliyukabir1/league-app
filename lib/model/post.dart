class PostModel {
  final String? body, title;
  final int? id, userId;

  PostModel({this.body, this.title, this.id, this.userId});

  PostModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        userId = json['userId'],
        title = json['title'],
        body = json['body'];
}
