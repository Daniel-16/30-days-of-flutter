// import 'dart:convert';
class Data {
  final String title;
  final String description;

  Data({required this.title, required this.description});
  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
        title: json['title'] as String,
        description: json['description'] as String);
  }
}
