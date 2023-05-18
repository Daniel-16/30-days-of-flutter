import 'package:flutter/material.dart';

class NewsDetails extends StatelessWidget {
  final dynamic articles;
  const NewsDetails({required this.articles, super.key});

  @override
  Widget build(BuildContext context) {
    double top = MediaQuery.of(context).size.height;
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
      body: Column(
        children: [
          Stack(children: [
            SizedBox(
                height: 400,
                child:
                    Image.network(articles['urlToImage'], fit: BoxFit.cover)),
            Positioned(
                top: top * 0.09,
                left: 13,
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 90, 90, 90),
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 20,
                          fill: 1,
                        )),
                  ),
                ))
          ]),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  articles['title'],
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(
                  articles['content']
                      .substring(0, articles['content'].length - 14),
                  style: const TextStyle(
                    fontSize: 17,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 270.0, top: 8.0),
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
    );
  }
}
