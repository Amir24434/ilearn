import 'package:flutter/material.dart';
import 'package:ilearn/components/bottom_sheet.dart';
import 'package:ilearn/components/courses_tile.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  void _showBottomAppBar(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      isScrollControlled: true, // Ensures it takes the required height
      builder: (BuildContext context) {
        return Container(
          height:
              MediaQuery.of(context).size.height * 0.7, // 60% of screen height
          padding: const EdgeInsets.all(16.0),
          child: BottomAppScreen(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              // TextField(
              //   decoration: InputDecoration(
              //     hintText: 'Search',
              //   ),
              // ),
              Container(
                height: size.height * 0.055,
                margin: const EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.green,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            "Search",
                            style: TextStyle(
                              color: Colors.grey[500],
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onDoubleTap: () => _showBottomAppBar(context),
                        child: Icon(
                          Icons.filter_list,
                          color: Colors.grey[500],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: size.height * 0.03,
                      width: size.width * 0.25,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Visual Identity", // Set text dynamically
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      height: size.height * 0.03,
                      width: size.width * 0.25,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Visual Identity", // Set text dynamically
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      height: size.height * 0.03,
                      width: size.width * 0.25,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Visual Identity", // Set text dynamically
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      height: size.height * 0.03,
                      width: size.width * 0.25,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Visual Identity", // Set text dynamically
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      height: size.height * 0.03,
                      width: size.width * 0.25,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Visual Identity", // Set text dynamically
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      height: size.height * 0.03,
                      width: size.width * 0.25,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Visual Identity", // Set text dynamically
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.topLeft,
                child: const Text(
                  "Results",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              CoursesTile(
                size: size,
                courseName: 'Java Development',
                instructorName: 'Nguyen Shane',
                price: 190,
                time: '16 hours',
              ),
              CoursesTile(
                size: size,
                courseName: 'Java Development',
                instructorName: 'Nguyen Shane',
                price: 190,
                time: '16 hours',
              ),
              CoursesTile(
                size: size,
                courseName: 'Java Development',
                instructorName: 'Nguyen Shane',
                price: 190,
                time: '16 hours',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
