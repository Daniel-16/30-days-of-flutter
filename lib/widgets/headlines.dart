import 'package:flutter/material.dart';

class HeadLines extends StatelessWidget {
  final Color color;
  HeadLines({required this.color, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Breaking News",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  "Show More",
                  style: TextStyle(color: Colors.grey, fontSize: 17),
                )),
          ],
        ),
        SizedBox(
          height: 300,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: ((context, index) {
                return Container(
                  margin: const EdgeInsets.only(top: 60, left: 5, right: 5),
                  height: 40,
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                          image: AssetImage("assets/landscape.jpg"),
                          fit: BoxFit.cover)),
                  child: const Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 8.0),
                      child: SizedBox(
                        width: 300,
                        height: 40,
                        child: Center(
                          child: Text(
                            "Cillum sit mollit nulla ut consectetur proident mollit. Mollit qui officia velit excepteur. Dolore id cupidatat cillum dolore ullamco mollit magna. ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              })),
        )
      ],
    );
  }
}
