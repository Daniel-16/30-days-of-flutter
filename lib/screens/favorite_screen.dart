import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() => setState(() {
        _counter--;
      });

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "My Favorites",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 150,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
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
                                  fit: BoxFit.cover,
                                ))),
                      ),
                      SizedBox(
                          width: 250,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 8, right: 8, top: 40),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Duis ipsum id labore sint aliqua.",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                const Text(
                                  "Est dolore adipisicing eu ea excepteur sint qui ullamco non proident eu commodo Lorem sit.",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.grey),
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 30,
                                      height: 30,
                                      child: ElevatedButton(
                                        onPressed: _incrementCounter,
                                        style: ElevatedButton.styleFrom(
                                            elevation: 0,
                                            backgroundColor:
                                                Colors.deepOrangeAccent),
                                        child: const Text(
                                          "+",
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, right: 8.0),
                                      child: Text("$_counter"),
                                    ),
                                    SizedBox(
                                      width: 30,
                                      height: 30,
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              elevation: 0,
                                              backgroundColor:
                                                  Colors.deepOrangeAccent),
                                          onPressed: _decrementCounter,
                                          child: const Text("-")),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 150,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
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
                                  "assets/food2.jpg",
                                  fit: BoxFit.cover,
                                ))),
                      ),
                      SizedBox(
                          width: 250,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 8, right: 8, top: 40),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Duis ipsum id labore sint aliqua.",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                const Text(
                                  "Est dolore adipisicing eu ea excepteur sint qui ullamco non proident eu commodo Lorem sit.",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.grey),
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 30,
                                      height: 30,
                                      child: ElevatedButton(
                                        onPressed: _incrementCounter,
                                        style: ElevatedButton.styleFrom(
                                            elevation: 0,
                                            backgroundColor:
                                                Colors.deepOrangeAccent),
                                        child: const Text(
                                          "+",
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, right: 8.0),
                                      child: Text("$_counter"),
                                    ),
                                    SizedBox(
                                      width: 30,
                                      height: 30,
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              elevation: 0,
                                              backgroundColor:
                                                  Colors.deepOrangeAccent),
                                          onPressed: _decrementCounter,
                                          child: const Text("-")),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 150,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
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
                                  "assets/food1.jpg",
                                  fit: BoxFit.cover,
                                ))),
                      ),
                      SizedBox(
                          width: 250,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 8, right: 8, top: 40),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Duis ipsum id labore sint aliqua.",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                const Text(
                                  "Est dolore adipisicing eu ea excepteur sint qui ullamco non proident eu commodo Lorem sit.",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.grey),
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 30,
                                      height: 30,
                                      child: ElevatedButton(
                                        onPressed: _incrementCounter,
                                        style: ElevatedButton.styleFrom(
                                            elevation: 0,
                                            backgroundColor:
                                                Colors.deepOrangeAccent),
                                        child: const Text(
                                          "+",
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, right: 8.0),
                                      child: Text("$_counter"),
                                    ),
                                    SizedBox(
                                      width: 30,
                                      height: 30,
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              elevation: 0,
                                              backgroundColor:
                                                  Colors.deepOrangeAccent),
                                          onPressed: _decrementCounter,
                                          child: const Text("-")),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 150,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
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
                                  "assets/food2.jpg",
                                  fit: BoxFit.cover,
                                ))),
                      ),
                      SizedBox(
                          width: 250,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 8, right: 8, top: 40),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Duis ipsum id labore sint aliqua.",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                const Text(
                                  "Est dolore adipisicing eu ea excepteur sint qui ullamco non proident eu commodo Lorem sit.",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.grey),
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 30,
                                      height: 30,
                                      child: ElevatedButton(
                                        onPressed: _incrementCounter,
                                        style: ElevatedButton.styleFrom(
                                            elevation: 0,
                                            backgroundColor:
                                                Colors.deepOrangeAccent),
                                        child: const Text(
                                          "+",
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, right: 8.0),
                                      child: Text("$_counter"),
                                    ),
                                    SizedBox(
                                      width: 30,
                                      height: 30,
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              elevation: 0,
                                              backgroundColor:
                                                  Colors.deepOrangeAccent),
                                          onPressed: _decrementCounter,
                                          child: const Text("-")),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 150,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
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
                                  "assets/food1.jpg",
                                  fit: BoxFit.cover,
                                ))),
                      ),
                      SizedBox(
                          width: 250,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 8, right: 8, top: 40),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Duis ipsum id labore sint aliqua.",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                const Text(
                                  "Est dolore adipisicing eu ea excepteur sint qui ullamco non proident eu commodo Lorem sit.",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.grey),
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 30,
                                      height: 30,
                                      child: ElevatedButton(
                                        onPressed: _incrementCounter,
                                        style: ElevatedButton.styleFrom(
                                            elevation: 0,
                                            backgroundColor:
                                                Colors.deepOrangeAccent),
                                        child: const Text(
                                          "+",
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, right: 8.0),
                                      child: Text("$_counter"),
                                    ),
                                    SizedBox(
                                      width: 30,
                                      height: 30,
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              elevation: 0,
                                              backgroundColor:
                                                  Colors.deepOrangeAccent),
                                          onPressed: _decrementCounter,
                                          child: const Text("-")),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 150,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
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
                                  fit: BoxFit.cover,
                                ))),
                      ),
                      SizedBox(
                          width: 250,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 8, right: 8, top: 40),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Duis ipsum id labore sint aliqua.",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                const Text(
                                  "Est dolore adipisicing eu ea excepteur sint qui ullamco non proident eu commodo Lorem sit.",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.grey),
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 30,
                                      height: 30,
                                      child: ElevatedButton(
                                        onPressed: _incrementCounter,
                                        style: ElevatedButton.styleFrom(
                                            elevation: 0,
                                            backgroundColor:
                                                Colors.deepOrangeAccent),
                                        child: const Text(
                                          "+",
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, right: 8.0),
                                      child: Text("$_counter"),
                                    ),
                                    SizedBox(
                                      width: 30,
                                      height: 30,
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              elevation: 0,
                                              backgroundColor:
                                                  Colors.deepOrangeAccent),
                                          onPressed: _decrementCounter,
                                          child: const Text("-")),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
