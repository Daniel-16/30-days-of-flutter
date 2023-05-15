// import 'dart:convert';
import 'dart:convert';

import 'package:flutter/material.dart';
// import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import '../utils/news_posts.dart';
// import '../utils/data.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    getNewsPosts();
  }

  List<NewsPost> newsPost = [];
  List<NewsPost> searchResult = [];

  void onSearchTextChange(String text) async {
    searchResult.clear();
    if (text.isEmpty) {
      setState(() {});
      return;
    }
    // newsPost.forEach((news) {
    //   if (news.title.contains(text)) {
    //     newsPost.add(news);
    //   }
    // });
    setState(() {});
  }

  Future<void> getNewsPosts() async {
    await dotenv.load();
    String apiKey = dotenv.env["API_KEY"].toString();
    final response = await http.get(Uri.parse(
        'https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=$apiKey'));
    final data = jsonDecode(response.body);
    setState(() {
      for (Map news in data) {
        newsPost.add(NewsPost.fromJson(news));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
      ),
      body: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
              controller: controller,
              autofocus: true,
              onChanged: onSearchTextChange,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  hintText: "Search for all news",
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: IconButton(
                      onPressed: () {
                        controller.clear();
                        onSearchTextChange("");
                      },
                      icon: const Icon(Icons.cancel_outlined)),
                  border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(15))),
            ),
            Expanded(
                child: controller.text.isNotEmpty
                    ? ListView.builder(
                        itemCount: 10,
                        itemBuilder: (BuildContext context, index) {
                          return Card(
                            child: ListTile(
                              title: Text(newsPost[index].title),
                            ),
                          );
                        })
                    : const Text("Could not find any data"))
          ],
        ),
      ),
    );
  }
}
