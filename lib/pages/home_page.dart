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

  FocusNode _focusNode = FocusNode();

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
                      height: 20,
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
                                            top: 6,
                                            bottom: 6,
                                            left: 12,
                                            right: 12),
                                        child: Text(
                                          "Price: \$200",
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold),
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
                                            top: 6,
                                            bottom: 6,
                                            left: 12,
                                            right: 12),
                                        child: Text(
                                          "Price: \$2,000",
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold),
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
                                            top: 6,
                                            bottom: 6,
                                            left: 12,
                                            right: 12),
                                        child: Text(
                                          "Price: \$300",
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold),
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
                                            top: 6,
                                            bottom: 6,
                                            left: 12,
                                            right: 12),
                                        child: Text(
                                          "Price: \$12,000",
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold),
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
                  ))
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
