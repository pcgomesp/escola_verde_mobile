import 'package:mysql_client/mysql_client.dart';

class PostModel {
  final String? id;
  final String? author;
  final String? date;
  final String? content;
  final String? title;

  PostModel(
      {required this.author,
      required this.content,
      required this.title,
      required this.id,
      required this.date});

  static PostModel parse(ResultSetRow post) => PostModel(
      id: post.colByName('ID'),
      author: post.colByName('post_author'),
      content: post.colByName('post_content'),
      title: post.colByName('post_title'),
      date: post.colByName('post_date'));
}
