import 'package:flutter/material.dart';
import 'package:ilearn/components/colors.dart';
import 'package:ilearn/components/courses_tile.dart';

class TabBarNav extends StatelessWidget {
  const TabBarNav({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 20.0, // Adjust height as needed
          elevation: 0, // Removes the bottom border line

          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(40.0), // Adjust tab bar height
            child: TabBar(
              indicator: BoxDecoration(
                color: primaryColor, // Highlight color
                borderRadius: BorderRadius.circular(25), // Rounded corners
              ),
              labelColor: Colors.white, // Text color when selected
              unselectedLabelColor: Colors.grey, // Text color when not selected
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: const [
                Tab(text: 'All'),
                Tab(text: 'Popular'),
                Tab(text: 'New'),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CoursesTile(
                    size: size,
                    courseName: 'Product Design v1.0',
                    instructorName: 'Robertson Connie',
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
                    courseName: 'Visual Design',
                    instructorName: 'Bert Pullman',
                    price: 250,
                    time: '14 hours',
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
                    courseName: 'Visual Design',
                    instructorName: 'Bert Pullman',
                    price: 250,
                    time: '14 hours',
                  ),
                  CoursesTile(
                    size: size,
                    courseName: 'Product Design v1.0',
                    instructorName: 'Robertson Connie',
                    price: 190,
                    time: '16 hours',
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CoursesTile(
                    size: size,
                    courseName: 'Product Design v1.0',
                    instructorName: 'Robertson Connie',
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
                    courseName: 'Visual Design',
                    instructorName: 'Bert Pullman',
                    price: 250,
                    time: '14 hours',
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CoursesTile(
                    size: size,
                    courseName: 'Product Design v1.0',
                    instructorName: 'Robertson Connie',
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
                    courseName: 'Visual Design',
                    instructorName: 'Bert Pullman',
                    price: 250,
                    time: '14 hours',
                  ),
                  CoursesTile(
                    size: size,
                    courseName: 'Product Design v1.0',
                    instructorName: 'Robertson Connie',
                    price: 190,
                    time: '16 hours',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
