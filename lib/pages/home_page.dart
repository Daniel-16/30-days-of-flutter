import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
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
      body: Row(
        children: const [Text("John Doe"), Icon(Icons.card_travel_outlined)],
      ),
    );
  }
}
