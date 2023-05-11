// // import 'dart:convert';
// import 'dart:convert';

// import 'package:flutter/material.dart';
// // import 'package:easy_search_bar/easy_search_bar.dart';
// import 'package:http/http.dart' as http;
// import 'package:flutter_dotenv/flutter_dotenv.dart';
// // import '../utils/news_posts.dart';
// import '../utils/data.dart';

// class SearchScreen extends StatefulWidget {
//   const SearchScreen({super.key});

//   @override
//   State<SearchScreen> createState() => _SearchScreenState();
// }


// abstract class _SearchScreenState extends State<SearchScreen> {
//   TextEditingController controller = TextEditingController();

//   @override
//   void initState() {
//     super.initState();
//     getNewsPosts();
//   }

//   List<Data> _newsPost = [];
//   List<Data> _filteredDataList = [];


//   Future<void> getNewsPosts() async {
//     await dotenv.load();
//     String apiKey = dotenv.env["API_KEY"].toString();
//     final response = await http.get(Uri.parse(
//         'https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=$apiKey'));
//     if (response.statusCode == 200) {
//       final data = jsonDecode(response.body);
//       setState(() {
//         _newsPost = data.map((data) => Data.fromJson(data)).toList();
//         _filteredDataList = _newsPost;
//       });
//     } else {
//       throw Exception("Failed to load data from API");
//     }

//     void _filterDataList(String searchQuery) {
//       List<Data> filteredList = [];
//       for (int i = 0; i < _newsPost.length; i++) {
//       final data = _newsPost[i];
//       if (data.title.toLowerCase().contains(searchQuery.toLowerCase())) {
//         filteredList.add(data);
//       }
//     }
//     setState(() {
//       _filteredDataList = filteredList;
//     });
//     }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         leading: IconButton(
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             icon: const Icon(
//               Icons.arrow_back_ios,
//               color: Colors.black,
//             )),
//       ),
//       body: Container(
//         padding: const EdgeInsets.all(8),
//         child: Column(
//           children: [
//             TextField(
//               controller: controller,
//               autofocus: true,
//               onChanged: _filterDataList,
//               keyboardType: TextInputType.text,
//               decoration: InputDecoration(
//                   hintText: "Search for news here",
//                   prefixIcon: const Icon(Icons.search),
//                   suffixIcon: IconButton(
//                       onPressed: () {
//                         controller.clear();
//                       },
//                       icon: const Icon(Icons.cancel_outlined)),
//                   border: OutlineInputBorder(
//                       borderSide: const BorderSide(color: Colors.grey),
//                       borderRadius: BorderRadius.circular(15))),
//             ),                
//           ],
//         ),
//       ),
//     );
//   }
// }
