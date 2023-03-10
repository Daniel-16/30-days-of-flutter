import 'package:flutter/material.dart';

class FoodItems extends StatelessWidget {
  const FoodItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 330, left: 8, right: 8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 280,
                    width: MediaQuery.of(context).size.width * 0.44,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage("assets/food1.jpg"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.deepOrangeAccent),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 8, left: 8),
                      child: Center(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Card(
                            color: Colors.white,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: 6, bottom: 6, left: 12, right: 12),
                              child: Text(
                                "Price: \$200",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 280,
                    width: MediaQuery.of(context).size.width * 0.44,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage("assets/food2.jpg"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.deepOrangeAccent),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 8, left: 8),
                      child: Center(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Card(
                            color: Colors.white,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: 6, bottom: 6, left: 12, right: 12),
                              child: Text(
                                "Price: \$2,000",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 280,
                    width: MediaQuery.of(context).size.width * 0.44,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage("assets/food3.jpg"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.deepOrangeAccent),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 8, left: 8),
                      child: Center(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Card(
                            color: Colors.white,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: 6, bottom: 6, left: 12, right: 12),
                              child: Text(
                                "Price: \$300",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 280,
                    width: MediaQuery.of(context).size.width * 0.44,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage("assets/food1.jpg"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.deepOrangeAccent),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 8, left: 8),
                      child: Center(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Card(
                            color: Colors.white,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: 6, bottom: 6, left: 12, right: 12),
                              child: Text(
                                "Price: \$12,000",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
