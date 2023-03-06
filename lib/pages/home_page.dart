import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: const [
      //       Text(
      //         "Good Morning,",
      //         style: TextStyle(color: Colors.black, fontSize: 17),
      //       ),
      //       Text(
      //         "John Doe",
      //         style: TextStyle(
      //             color: Colors.black,
      //             fontWeight: FontWeight.bold,
      //             fontSize: 20),
      //       ),
      //     ],
      //   ),
      //   backgroundColor: Colors.white,
      //   elevation: 0,
      // ),
      body: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(top: 90, left: 25, right: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Good Morning,",
                        style: TextStyle(fontSize: 17),
                      ),
                      Text(
                        "John Doe",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const Icon(Icons.person, size: 40),
                ],
              ),
              const TextField(
                decoration: InputDecoration(
                    labelText: "Search here...",
                    prefixIcon: Icon(Icons.search),
                    hoverColor: Colors.grey,
                    suffixIcon: Icon(Icons.sync_alt_outlined)),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
