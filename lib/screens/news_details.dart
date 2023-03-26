import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsDetails extends StatelessWidget {
  final dynamic articles;
  const NewsDetails({required this.articles, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   leading: IconButton(
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //     icon: Icon(
      //       Icons.arrow_back_ios,
      //       color: Colors.black,
      //     ),
      //   ),
      //   elevation: 0,
      //   backgroundColor: Colors.white,
      // ),
      body: Container(
        child: Column(
          children: [
            Container(
                decoration: BoxDecoration(),
                child: Stack(children: [
                  Image.network(articles['urlToImage']),
                  Positioned(
                      top: 55,
                      left: 13,
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 90, 90, 90),
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                                size: 20,
                                fill: 1,
                              )),
                        ),
                      ))
                ])),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    articles['title'],
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    articles['content']
                        .substring(0, articles['content'].length - 14),
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      if (await canLaunchUrl(Uri.parse(articles['url']))) {
                        await launchUrl(articles['url']);
                      } else {
                        throw 'Could not launch url';
                      }
                    },
                    child: Text(
                      "Read More",
                      style: TextStyle(fontSize: 17, color: Colors.blue),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
