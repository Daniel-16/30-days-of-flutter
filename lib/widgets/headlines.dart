import 'package:flutter/material.dart';
import 'package:flutter_practice/screens/all_news.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../screens/news_details.dart';

class HeadLines extends StatefulWidget {
  final Color color;
  const HeadLines({required this.color, super.key});

  @override
  State<HeadLines> createState() => _HeadLinesState();
}

class _HeadLinesState extends State<HeadLines> {
  bool loading = true;
  dynamic data;
  String errorMessage = '';

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    await dotenv.load();
    String apiKey = dotenv.env['API_KEY'].toString();
    try {
      final response = await http.get(
          Uri.parse('https://newsapi.org/v2/everything?q=Tech&apiKey=$apiKey'));
      setState(() {
        loading = false;
        data = jsonDecode(response.body);
      });
    } catch (error) {
      setState(() {
        loading = false;
        errorMessage = "An error occured when trying to load news";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return loading
        ? const Padding(
            padding: EdgeInsets.only(bottom: 8.0),
            child: Align(
                alignment: Alignment.topCenter,
                child: CircularProgressIndicator()),
          )
        : errorMessage.isNotEmpty
            ? Center(
                child: Align(
                    alignment: Alignment.topCenter, child: Text(errorMessage)),
              )
            : Stack(
                children: [
                  SizedBox(
                    height: 300,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 20,
                        itemBuilder: ((context, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => NewsDetails(
                                            articles: data['articles'][index],
                                          )));
                            },
                            child: Container(
                              margin: const EdgeInsets.only(
                                  top: 60, left: 5, right: 5),
                              height: 40,
                              width: 350,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                      image: NetworkImage(data["articles"]
                                          [index]['urlToImage']),
                                      fit: BoxFit.cover)),
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: SizedBox(
                                    width: 300,
                                    height: 40,
                                    child: Center(
                                      child: Text(
                                        data['articles'][index]['title'],
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        })),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    left: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Breaking News",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w600),
                        ),
                        TextButton(
                            onPressed: () => {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const AllNews()))
                                },
                            child: const Text(
                              "Show More",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 17),
                            )),
                      ],
                    ),
                  ),
                ],
              );
  }
}
