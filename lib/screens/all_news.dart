import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_practice/screens/news_details.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

class AllNews extends StatefulWidget {
  const AllNews({super.key});

  @override
  State<AllNews> createState() => _AllNewsState();
}

class _AllNewsState extends State<AllNews> {
  dynamic data;
  bool loading = true;
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
        errorMessage = 'An error occured while trying to load data';
      });
    }
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
          ),
        ),
        title: const Text(
          "Breaking News",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: loading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : errorMessage.isNotEmpty
              ? RefreshIndicator(
                  key: GlobalKey<RefreshIndicatorState>(),
                  onRefresh: fetchData,
                  child: Center(child: Text(errorMessage)))
              : RefreshIndicator(
                  key: GlobalKey<RefreshIndicatorState>(),
                  onRefresh: fetchData,
                  child: ListView.builder(
                      itemCount: data['articles'].length,
                      itemBuilder: (context, index) {
                        String input = data['articles'][index]['publishedAt'];
                        List<String> dateTimeComponents = input.split('T');
                        String dateComponent = dateTimeComponents[0];
                        String convertedDate =
                            '${dateComponent.substring(0, 4)}-${dateComponent.substring(5, 7)}-${dateComponent.substring(8, 10)}';
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NewsDetails(
                                        articles: data['articles'][index])));
                          },
                          child: Container(
                            margin: const EdgeInsets.only(
                                top: 10, left: 20, right: 20),
                            height: 300,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        data['articles'][index]['urlToImage']),
                                    fit: BoxFit.cover)),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.3)),
                                  width: 300,
                                  height: 60,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8.0, right: 8),
                                    child: Center(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            data['articles'][index]['title'],
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            convertedDate,
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                ),
    );
  }
}
