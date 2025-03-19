import 'package:flutter/material.dart';
import 'package:ilearn/components/colors.dart';

class TabBarNav extends StatelessWidget {
  const TabBarNav({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs

      child: TabBar(
        indicator: BoxDecoration(
          color: primaryColor, // Highlight color
          borderRadius: BorderRadius.circular(25), // Rounded corners
        ),
        labelColor: Colors.white, // Text color when selected
        unselectedLabelColor: Colors.black, // Text color when not selected
        indicatorSize: TabBarIndicatorSize.tab,
        tabs: [
          Tab(text: 'All'),
          Tab(text: 'Popular'),
          Tab(text: 'New'),
        ],
      ),
    );
    // body: TabBarView(
    //   children: [
    //     Center(child: Text('Home Screen')),
    //     Center(child: Text('Explore Screen')),
    //     Center(child: Text('Profile Screen')),
    //   ],
    // ),
  }
}
