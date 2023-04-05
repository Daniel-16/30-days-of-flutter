import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    getNewsInformation();
  }

  Future<void> getNewsInformation() async {
    await dotenv.load();
    String apiKey = dotenv.env['API_KEY'].toString();
    try {
      final response = await http.get(
          Uri.parse('https://newsapi.org/v2/everything?q=Tech&apiKey=$apiKey'));
      final data = jsonDecode(response.body);
    } catch (error) {
      print(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
      ),
      body: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
              controller: controller,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  hintText: "Search for news here",
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: Icon(Icons.cancel_outlined),
                  border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(15))),
            ),
          ],
        ),
      ),
    );
  }
}
