import 'package:equatable/equatable.dart';

class PostModel extends Equatable {
  final int id;
  final String title;
  final String body;

  const PostModel({
    required this.id,
    required this.title,
    required this.body,
  });

  @override
  get props => [id, title, body];

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'body': body,
    };
  }
}
