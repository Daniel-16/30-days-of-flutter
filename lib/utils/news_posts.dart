class NewsPost {
  final String title;

  NewsPost({required this.title});

  factory NewsPost.fromJson(Map<dynamic, dynamic> json) {
    return NewsPost(title: json['title']);
  }
}
