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
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(Icons.home,
                    color:
                        _selectedIndex == 0 ? primaryColor : Colors.grey[400]),
                onPressed: () => _onItemTapped(0),
              ),
              IconButton(
                icon: Icon(Icons.book,
                    color:
                        _selectedIndex == 1 ? primaryColor : Colors.grey[400]),
                onPressed: () => _onItemTapped(1),
              ),
              SizedBox(width: 40), // Space for the floating button
              IconButton(
                icon: Icon(Icons.message,
                    color:
                        _selectedIndex == 3 ? primaryColor : Colors.grey[400]),
                onPressed: () => _onItemTapped(3),
              ),
              IconButton(
                icon: Icon(Icons.person,
                    color:
                        _selectedIndex == 4 ? primaryColor : Colors.grey[400]),
                onPressed: () => _onItemTapped(4),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
