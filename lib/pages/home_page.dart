import 'package:flutter/material.dart';
import 'package:flutter_practice/widgets/categories.dart';
import 'package:flutter_practice/widgets/headlines.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const Color iconColor = Color.fromARGB(255, 101, 101, 101);
    const Color navIconBackground = Color.fromARGB(255, 214, 214, 214);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Container(
          margin: const EdgeInsets.only(left: 8, top: 3, bottom: 3),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: navIconBackground),
          child: Container(
            margin: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.white),
            child: IconButton(
              splashRadius: 1,
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: iconColor,
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Container(
              margin: const EdgeInsets.only(top: 3),
              decoration: BoxDecoration(
                  color: navIconBackground,
                  borderRadius: BorderRadius.circular(30)),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white),
                    child: IconButton(
                      splashRadius: 1,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search_rounded,
                        color: iconColor,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white),
                    child: IconButton(
                      splashRadius: 1,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.notifications_none_rounded,
                        color: iconColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: HeadLines(color: navIconBackground),
          ),
          const Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, top: 100 * 3.3),
            child: Categories(),
          ),
        ],
      ),
    );
  }
}
