import 'package:flutter/material.dart';
import 'package:flutter_practice/screens/news_details.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';

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
    await dotenv.load();
    String apiKey = dotenv.env["API_KEY"].toString();
    try {
      final response = await http.get(Uri.parse(
          'https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=$apiKey'));
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
        ? const Center(child: CircularProgressIndicator())
        : errorMessage.isNotEmpty
            ? Center(child: Text(errorMessage))
            : SizedBox(
                child: RefreshIndicator(
                  key: GlobalKey<RefreshIndicatorState>(),
                  onRefresh: fetchData,
                  child: ListView.builder(
                      itemCount: data['articles'].length,
                      itemBuilder: (context, index) {
                        String input =
                            data['articles'][index]['publishedAt'].toString();
                        List<String> dateTimeComponents = input.split('T');
                        String dateComponent = dateTimeComponents[0];
                        String output =
                            '${dateComponent.substring(0, 4)}-${dateComponent.substring(5, 7)}-${dateComponent.substring(8, 10)}';
                        return Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => NewsDetails(
                                              articles: data['articles'][index],
                                            )));
                              },
                              child: Card(
                                child: Row(
                                  children: [
                                    Container(
                                      height: 70,
                                      width: 70,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  data['articles'][index]
                                                      ["urlToImage"]),
                                              fit: BoxFit.cover)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: SizedBox(
                                        width: 270,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(data["articles"][index]
                                                    ["title"]
                                                .toString()),
                                            Text(
                                              output,
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ));
                      }),
                ),
              );
  }
}
