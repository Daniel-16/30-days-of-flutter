import 'package:flutter/material.dart';
import 'package:flutter_practice/helper/shared_pref_helper.dart';
import 'package:flutter_practice/pages/login_page.dart';
import 'drawer_widget.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final String url = 'https://jsonplaceholder.typicode.com/posts';
  var data;
  // final TextEditingController _nameController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  fetchData() async {
    var res = await http.get(Uri.parse(url));
    data = jsonDecode(res.body);
    setState(() {});
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                SharedPreferenceHelper.prefs?.setBool("loggedIn", false);
                Navigator.pushReplacementNamed(context, '/login');
              },
              icon: const Icon(Icons.exit_to_app_rounded))
        ],
      ),
      body: data != null
          ? ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ListTile(
                    tileColor: Colors.white,
                    title: Text(
                      data[index]["title"],
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    leading: const Icon(Icons.comment),
                    trailing: const Icon(Icons.person),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    subtitle: Text(
                      '${data[index]["body"]}',
                      style: const TextStyle(fontSize: 15),
                    ),
                  ),
                );
              },
              itemCount: data.length,
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
      ]),
      drawer: const Drawerwidget(),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            // text = _nameController.text;
            // changeText(text);
          },
          tooltip: "Floating Action Button",
          child: const Icon(Icons.send)),
    );
  }
}
