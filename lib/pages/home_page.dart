import 'package:flutter/material.dart';
import 'package:flutter_practice/pages/orders_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // print(_selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _selectedIndex == 0
          ? Stack(children: [
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
                        const CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: Icon(Icons.person, color: Colors.black54),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(255, 214, 214, 214),
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              borderSide: BorderSide.none),
                          labelText: "Search here...",
                          prefixIcon: Icon(Icons.search),
                          suffixIcon: Icon(Icons.sync_alt_outlined)),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          SizedBox(
                            width: 90,
                            child: Card(
                              color: Colors.black,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Popular",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 90,
                            child: Card(
                              color: Colors.grey,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Recent",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 90,
                            child: Card(
                              color: Colors.grey,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Favorite",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 90,
                            child: Card(
                              color: Colors.grey,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "New",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 90,
                            child: Card(
                              color: Colors.grey,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Special",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 310, left: 8, right: 8),
                child: GridView.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 8.0,
                  scrollDirection: Axis.vertical,
                  childAspectRatio: 0.7,
                  padding: const EdgeInsets.only(top: 10),
                  children: [
                    Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Image.asset(
                        "assets/food1.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Image.asset("assets/food2.jpg", fit: BoxFit.cover),
                    ),
                    Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Image.asset("assets/food3.jpg", fit: BoxFit.cover),
                    ),
                    Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Image.asset(
                        "assets/food3.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Image.asset(
                        "assets/food2.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Card(
                      semanticContainer: true,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Image.asset(
                        "assets/food1.jpg",
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                    Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Image.asset("assets/food2.jpg",
                          fit: BoxFit.scaleDown),
                    ),
                    Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Image.asset("assets/food3.jpg",
                          fit: BoxFit.scaleDown),
                    ),
                  ],
                ),
              )
            ])
          : _selectedIndex == 1
              ? const Center(
                  child: Text("Favorite page"),
                )
              : _selectedIndex == 2
                  ? const OrdersScreen()
                  : const Center(
                      child: Text("Account profile"),
                    ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        elevation: 10,
        selectedItemColor: Colors.deepOrangeAccent,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        onTap: onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favorite"),
          BottomNavigationBarItem(
              icon: Icon(Icons.assignment), label: "Orders"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
