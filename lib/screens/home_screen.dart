import 'package:flutter/material.dart';
import 'package:flutter_practice/screens/drawer.dart';
import 'package:flutter_practice/screens/favorite_screen.dart';
import 'package:flutter_practice/screens/features_screen.dart';
import 'package:flutter_practice/screens/food_items.dart';
import 'package:flutter_practice/screens/orders_screen.dart';
import 'package:flutter_practice/screens/profile_screen.dart';

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
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
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
                            backgroundImage: AssetImage("assets/person.jpg"),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 65,
                      child: TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color.fromARGB(255, 214, 214, 214),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide.none),
                            enabledBorder: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                borderSide: BorderSide.none),
                            hintText: "Search here...",
                            prefixIcon: const Icon(Icons.search),
                            suffixIcon: const Icon(Icons.sort_sharp)),
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
                  child: FavoriteScreen(),
                )
              : _selectedIndex == 2
                  ? const OrdersScreen()
                  : const ProfilePage(),
      endDrawer: const DrawerWidget(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        elevation: 0,
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
