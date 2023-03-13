import 'package:flutter/material.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Orders",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(onPressed: () => {}, icon: const Icon(Icons.share))
        ],
        iconTheme: const IconThemeData(color: Colors.black),
        leading: IconButton(
          onPressed: () => {},
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                SizedBox(
                  width: 350,
                  height: 280,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              "assets/food1.jpg",
                              fit: BoxFit.fill,
                            )),
                        const SizedBox(
                          width: 30,
                        ),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              "assets/food2.jpg",
                              fit: BoxFit.fill,
                            )),
                        const SizedBox(
                          width: 30,
                        ),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              "assets/food3.jpg",
                              fit: BoxFit.fill,
                            )),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Country Ranged Meat",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            "Est sit aute excepteur in sint sit ad eu non. Veniam irure officia ea id non sint do nisi velit aliquip nulla culpa consequat.Aliquip anim eu exercitation cillum deserunt elit dolore ut pariatur labore. Sunt voluptate commodo magna quis nisi commodo elit. Consectetur esse exercitation ullamco ea non cupidatat officia amet consequat. Occaecat reprehenderit aute esse id in aute eu non enim id voluptate aliqua dolor. Occaecat ullamco do dolor cupidatat laboris dolor .",
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 129, 129, 129)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Row(
                            children: [
                              Text(
                                "Reviews",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "(120)",
                                style: TextStyle(fontSize: 15),
                              ),
                              SizedBox(
                                width: 110,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 18,
                                    color: Colors.deepOrangeAccent,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 18,
                                    color: Colors.deepOrangeAccent,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 18,
                                    color: Colors.deepOrangeAccent,
                                  ),
                                  Icon(
                                    Icons.star_half,
                                    size: 18,
                                    color: Colors.deepOrangeAccent,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    size: 18,
                                    color: Colors.deepOrangeAccent,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "4.2",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 18,
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 50,
                      width: 150,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(13),
                                  side: const BorderSide(color: Colors.black))),
                          onPressed: () => {},
                          child: const Text(
                            "Add to Cart",
                            style: TextStyle(color: Colors.black),
                          )),
                    ),
                    const SizedBox(width: 20),
                    SizedBox(
                      height: 50,
                      width: 150,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: Colors.deepOrangeAccent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13),
                              )),
                          onPressed: () => {},
                          child: const Text(
                            "Checkout",
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
