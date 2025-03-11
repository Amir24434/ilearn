import 'package:flutter/material.dart';
import 'package:ilearn/components/colors.dart';
import 'package:ilearn/screens/account.dart';
import 'package:ilearn/screens/course.dart';
import 'package:ilearn/screens/home.dart';
import 'package:ilearn/screens/message.dart';
import 'package:ilearn/screens/search.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  // List of screens
  final List<Widget> _screens = [
    HomeScreen(),
    CourseScreen(),
    SearchScreen(),
    MessageScreen(),
    AccountScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex], // Display the selected screen
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _selectedIndex = 2; // Navigate to Search Screen
          });
        },
        backgroundColor: Colors.grey[200],
        elevation: 5,
        shape: CircleBorder(),
        child: Icon(
          Icons.search,
          color: primaryColor,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.grey[400],
        type: BottomNavigationBarType
            .fixed, // Ensures the labels are always shown
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Course',
          ),
          BottomNavigationBarItem(
            icon: SizedBox
                .shrink(), // Placeholder for the FloatingActionButton space
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
