import 'package:flutter/material.dart';
import 'drawer_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String text = "";
  final TextEditingController _nameController = TextEditingController();
  //Onchange function to change the inputted text
  void changeText(text) {
    setState(() {
      this.text = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Card(
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/hack.jpg",
                  ),
                  const SizedBox(height: 20),
                  Text(
                    text,
                    style: const TextStyle(fontSize: 25),
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      controller: _nameController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0))),
                          prefixIcon: Icon(Icons.pending),
                          labelText: "Enter text"),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      drawer: const Drawerwidget(),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            text = _nameController.text;
            changeText(text);
          },
          tooltip: "Floating Action Button",
          child: const Icon(Icons.send)),
    );
  }
}
