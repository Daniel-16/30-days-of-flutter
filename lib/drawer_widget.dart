import 'package:flutter/material.dart';

class Drawerwidget extends StatelessWidget {
  const Drawerwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    );
  }
}
