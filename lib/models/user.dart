import 'package:dogstargram/models/feed.dart';

class User {
  final String uid;
  final String name;
  final String img;
  final List<Feed> feeds;

  User(
      {required this.uid,
      required this.name,
      required this.img,
      required this.feeds});
}
