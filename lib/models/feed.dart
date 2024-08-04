class Feed {
  final String img;
  final String createAt;
  final String content;
  final List<String> comments;
  final String createBy;
  final String likes;

  Feed({
    required this.img,
    required this.createAt,
    required this.content,
    required this.comments,
    required this.createBy,
    required this.likes,
  });
}
