import 'package:swype_flutter/models/user_model.dart';

class Post {
  final String imageUrl;
  final String profileImageUrl;
  final User author;
  final String title;
  final String location;
  final int likes;
  final int comments;

  Post({
    this.imageUrl,
    this.profileImageUrl,
    this.author,
    this.title,
    this.location,
    this.likes,
    this.comments,
  });
}
