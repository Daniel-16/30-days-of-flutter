import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController controller = TextEditingController();

  List<String> newsList = [];
  List<String> filteredNewsList = [];

  Future<void> getNewsPosts() async {
    await dotenv.load();
    String apiKey = dotenv.env["API_KEY"].toString();
    final response = await http.get(Uri.parse(
        'https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=$apiKey'));
    if (response.statusCode == 200) {
      setState(() {
        newsList = List<String>.from(jsonDecode(response.body));
        filteredNewsList = List<String>.from(jsonDecode(response.body));
      });
    } else {
      throw Exception('Failed to fetch data');
    }
  }

  void filterNews(String query) {
    setState(() {
      filteredNewsList = newsList
          .where((item) => item.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  void initState() {
    super.initState();
    getNewsPosts();
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
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              TextField(
                controller: controller,
                autofocus: true,
                onChanged: filterNews,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    hintText: "Search for all news",
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: IconButton(
                        onPressed: () {
                          controller.clear();
                        },
                        icon: const Icon(Icons.cancel_outlined)),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(15))),
              ),
              SizedBox(
                height: 630,
                width: 650,
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          child: Row(
                            children: [
                              Container(
                                height: 60,
                                width: 120,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/hack.jpg'),
                                        fit: BoxFit.cover)),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text("Lorem ipsum dolor sit"),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
