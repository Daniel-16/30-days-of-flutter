import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Profile",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  SizedBox(
                      width: 150,
                      height: 150,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            "assets/hack.jpg",
                            fit: BoxFit.cover,
                          ))),
                  const Text(
                    "Anon Joe",
                    style: TextStyle(fontSize: 30),
                  ),
                  const Text(
                    "9 May 2002",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Container(
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(255, 217, 217, 217)),
                  height: 50,
                  child: const Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                Icon(Icons.notifications_none),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Notifications",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ],
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10.0),
                        child: Icon(Icons.arrow_forward_ios_rounded),
                      ),
                    ],
                  )),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(255, 217, 217, 217)),
                  height: 50,
                  child: const Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                Icon(Icons.lock_outline_rounded),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Password Update",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ],
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10.0),
                        child: Icon(Icons.arrow_forward_ios_rounded),
                      ),
                    ],
                  )),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 25.0, bottom: 10),
                    child: Text(
                      "Geography",
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                  ),
                ),
                Container(
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(255, 217, 217, 217)),
                  height: 50,
                  child: const Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                Icon(Icons.navigation_outlined),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Change Location",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ],
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10.0),
                        child: Icon(Icons.arrow_forward_ios_rounded),
                      ),
                    ],
                  )),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(255, 217, 217, 217)),
                  height: 50,
                  child: const Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                Icon(Icons.language_outlined),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Change Language",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ],
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10.0),
                        child: Icon(Icons.arrow_forward_ios_rounded),
                      ),
                    ],
                  )),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 25.0, bottom: 10),
                    child: Text(
                      "Membership",
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                  ),
                ),
                Container(
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(255, 217, 217, 217)),
                  height: 50,
                  child: const Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                Icon(Icons.card_giftcard),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Loyalty Cards",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ],
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10.0),
                        child: Icon(Icons.arrow_forward_ios_rounded),
                      ),
                    ],
                  )),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(255, 217, 217, 217)),
                  height: 50,
                  child: const Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                Icon(Icons.group_outlined),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Membership",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ],
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10.0),
                        child: Icon(Icons.arrow_forward_ios_rounded),
                      ),
                    ],
                  )),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(255, 217, 217, 217)),
                  height: 50,
                  child: const Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                Icon(Icons.receipt_long_outlined),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Certificates",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ],
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10.0),
                        child: Icon(Icons.arrow_forward_ios_rounded),
                      ),
                    ],
                  )),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 25.0, bottom: 10),
                    child: Text(
                      "Delete Account",
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                  ),
                ),
                Container(
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(255, 217, 217, 217)),
                  height: 50,
                  child: const Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                Icon(Icons.delete_outline),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Delete Account",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ],
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10.0),
                        child: Icon(Icons.arrow_forward_ios_rounded),
                      ),
                    ],
                  )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
