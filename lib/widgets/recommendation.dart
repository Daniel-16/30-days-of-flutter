import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Recommended extends StatefulWidget {
  const Recommended({super.key});

  @override
  State<Recommended> createState() => _RecommendedState();
}

class _RecommendedState extends State<Recommended> {
  bool loading = true;
  dynamic data;
  String errorMessage = "";

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    try {
      final response = await http.get(Uri.parse(
          'https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=af6ea2fbc2e0458bb5c21426bf030ce2'));
      setState(() {
        loading = false;
        data = jsonDecode(response.body);
      });
    } catch (error) {
      setState(() {
        loading = false;
        errorMessage = "An error occured while fetching news";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return loading
        ? Center(child: CircularProgressIndicator())
        : errorMessage.isNotEmpty
            ? Center(child: Text(errorMessage))
            : SizedBox(
                child: ListView.builder(
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: Card(
                            child: Row(
                              children: [
                                Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(data['articles']
                                              [index]["urlToImage"]),
                                          fit: BoxFit.cover)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    width: 270,
                                    child: Text(data["articles"][index]["title"]
                                        .toString()),
                                  ),
                                ),
                              ],
                            ),
                          ));
                    }),
              );
  }
}
