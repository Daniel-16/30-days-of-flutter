import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 300,
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: ListView(
          children: [
            Image.asset(
              "assets/person.jpg",
            ),
            const ListTile(
              title: Text("Shared with me"),
              leading: Icon(Icons.group),
            ),
            const ListTile(
              title: Text("Starred"),
              leading: Icon(Icons.star),
            ),
            const ListTile(
              title: Text("Recent"),
              leading: Icon(Icons.access_time),
            ),
            const ListTile(
              title: Text("Offline"),
              leading: Icon(Icons.download_done),
            ),
            const ListTile(
              title: Text("Uploads"),
              leading: Icon(Icons.upload),
            ),
            const ListTile(
              title: Text("Backups"),
              leading: Icon(Icons.cloud_upload),
            ),
            const ListTile(
              title: Text("Trash"),
              leading: Icon(Icons.delete),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, '/login');
              },
              title: const Text("Logout"),
              leading: const Icon(Icons.logout_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
