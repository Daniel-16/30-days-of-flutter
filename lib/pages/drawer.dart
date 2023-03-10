import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 300,
      child: ListView(
        children: const [
          DrawerHeader(child: Text("Settings")),
          ListTile(
            title: Text("Widget"),
          ),
          ListTile(
            title: Text("Widget"),
          ),
          ListTile(
            title: Text("Widget"),
          ),
        ],
      ),
    );
  }
}
