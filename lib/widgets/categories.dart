import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  bool pillColorChange = false;
  void toggle() {
    setState(() {
      pillColorChange = !pillColorChange;
    });
  }

  @override
  Widget build(BuildContext context) {
    const Color pillColor = Color.fromARGB(255, 215, 215, 215);
    return SizedBox(
        height: 40,
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  width: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color.fromARGB(255, 46, 120, 181)),
                  child: const Center(
                    child: Text(
                      "All",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: toggle,
                  child: Container(
                    margin: const EdgeInsets.only(right: 10),
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: pillColorChange
                            ? const Color.fromARGB(255, 46, 120, 181)
                            : pillColor),
                    child: Center(
                      child: Text(
                        "⚽ Sports",
                        style: TextStyle(
                            color:
                                pillColorChange ? Colors.white : Colors.black54,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  width: 95,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: pillColor),
                  child: const Center(
                    child: Text(
                      "📙 Education",
                      style: TextStyle(
                          color: Colors.black54, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  width: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: pillColor),
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.only(left: 5, right: 5),
                      child: Text(
                        "⚖ Politics",
                        style: TextStyle(
                            color: Colors.black54, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  width: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: pillColor),
                  child: const Center(
                    child: Text(
                      "🏥 Health",
                      style: TextStyle(
                          color: Colors.black54, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  width: 125,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: pillColor),
                  child: const Center(
                    child: Text(
                      "🎬 Entertainment",
                      style: TextStyle(
                          color: Colors.black54, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            )));
  }
}
