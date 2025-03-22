import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ilearn/components/app_bar_widget.dart';
import 'package:ilearn/components/colors.dart';
import 'package:ilearn/components/tab_bar.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Padding(
          padding: EdgeInsets.symmetric(
            vertical: size.height * 0.03,
            horizontal: size.width * 0.03,
          ),
          child: AppBarWidget(
            text: "Course",
            color: Colors.black,
            icon: Icon(
              Icons.person_3,
              color: primaryColor,
            ),
          ),
        ),
      ),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness:
              Brightness.dark, // Changed to dark for contrast
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: size.height * 0.055,
                  margin: const EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
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
                              color: Colors.grey[500],
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
                        Icon(
                          Icons.more_vert_rounded,
                          color: Colors.grey[500],
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildCourseCard(size, "Language"),
                    _buildCourseCard(size, "WLanguage"),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  "Choose your Course",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Expanded(
                  child: TabBarNav(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Helper method to build course cards
  Widget _buildCourseCard(Size size, String title) {
    return Container(
      height: size.height * 0.17,
      width: size.width * 0.4,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
