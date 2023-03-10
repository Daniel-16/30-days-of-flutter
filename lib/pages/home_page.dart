import 'package:flutter/material.dart';
import 'package:flutter_practice/pages/drawer.dart';
import 'package:flutter_practice/pages/features_page.dart';
import 'package:flutter_practice/pages/food_items.dart';
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

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      body: _selectedIndex == 0
          ? Stack(children: [
              Padding(
                padding: const EdgeInsets.only(top: 75, left: 25, right: 25),
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
                        GestureDetector(
                          onTap: (() {
                            _scaffoldKey.currentState!.openEndDrawer();
                          }),
                          child: const CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: Icon(Icons.person, color: Colors.black54),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const SizedBox(
                      height: 68,
                      child: TextField(
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
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const FeaturesWidget(),
                  ],
                ),
              ),
              const FoodItems()
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
      endDrawer: const DrawerWidget(),
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
