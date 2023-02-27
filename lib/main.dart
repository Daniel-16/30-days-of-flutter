import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Flutter Practice'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            width: 100,
            height: 100,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(15),
                gradient:
                    const LinearGradient(colors: [Colors.pink, Colors.red]),
                boxShadow: const [
                  BoxShadow(color: Colors.grey, blurRadius: 10)
                ]),
            child: const Text("Box with radius",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.normal)),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            width: 100,
            height: 100,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(15),
                gradient:
                    const LinearGradient(colors: [Colors.pink, Colors.red]),
                boxShadow: const [
                  BoxShadow(color: Colors.grey, blurRadius: 10)
                ]),
            child: const Text("Box with radius",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.normal)),
          ),
        ],
      )),
      drawer: Drawer(
        backgroundColor: Colors.redAccent,
        width: 300,
        child: ListView(
          children: <Widget>[
            const UserAccountsDrawerHeader(
                accountName: Text("Daniel Toba"),
                accountEmail: Text("danieloloruntoba681@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.redAccent,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 60,
                  ),
                )),
            ListTile(
              leading: const Icon(Icons.person, color: Colors.white70),
              title: const Text(
                "Account name",
                style: TextStyle(color: Colors.white),
              ),
              subtitle: const Text(
                "Change account details",
                style: TextStyle(color: Colors.white70),
              ),
              trailing: const Icon(
                Icons.edit,
                color: Colors.white70,
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.email, color: Colors.white70),
              title: const Text(
                "Email Address",
                style: TextStyle(color: Colors.white),
              ),
              subtitle: const Text(
                "Edit your email",
                style: TextStyle(color: Colors.white70),
              ),
              trailing: const Icon(
                Icons.edit,
                color: Colors.white70,
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.notifications, color: Colors.white70),
              title: const Text(
                "Notifications",
                style: TextStyle(color: Colors.white),
              ),
              subtitle: const Text(
                "Manage app notifications",
                style: TextStyle(color: Colors.white70),
              ),
              trailing: const Icon(
                Icons.edit,
                color: Colors.white70,
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (() => {}),
          tooltip: "Floating Action Button",
          child: const Icon(Icons.chat_rounded)),
    );
  }
}
