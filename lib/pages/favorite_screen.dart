import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Favorites",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16),
            child: Align(
              alignment: Alignment.centerLeft,
              child: const Text(
                "My Favorites",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 150,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: SizedBox(
                        width: 100,
                        height: 100,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              "assets/food3.jpg",
                              fit: BoxFit.fill,
                            ))),
                  ),
                  SizedBox(
                      width: 200,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: Column(
                          children: const [
                            Text(
                              "Duis ipsum id labore sint aliqua.",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Est dolore adipisicing eu ea excepteur sint qui ullamco non proident eu commodo Lorem sit.",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                          ],
                        ),
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
