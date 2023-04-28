// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'news_posts.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';

// class SearchApi {
//   static Future<List<NewsPost>> getNewsPost() async {
//     await dotenv.load();
//     String apiKey = dotenv.env["API_KEY"].toString();
//     final response = await http.get(Uri.parse(
//         'https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=$apiKey'));
//     if (response.statusCode == 200) {
//       List<dynamic> jsonList = jsonDecode(response.body);
//       return jsonList.map((json) => NewsPost.fromJson(json));
//     } else {
//       throw Exception('Failed to load NewsPosts');
//     }
//   }
// }
