import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ilearn/components/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double _progress = 0.0;

  void _startProgress() {
    Future.delayed(Duration(milliseconds: 100), () {
      if (_progress < 1.0) {
        setState(() {
          _progress += 0.1;
        });
        _startProgress();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryColor,
        title: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Hi Kristin!',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.person_3,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(
                height: 1,
              ),
              Text(
                "Let's start learning",
                style: TextStyle(
                  color: Colors.grey[100],
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          statusBarColor: primaryColor,
          statusBarIconBrightness: Brightness.light,
        ),
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    color: primaryColor,
                  ),
                ),
                Expanded(
                  flex: 9,
                  child: Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 50,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Container(
                                    height: 150,
                                    width: size.width * 0.75,
                                    margin: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                  Container(
                                    height: 150,
                                    width: size.width * 0.75,
                                    margin: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                  Container(
                                    height: 150,
                                    width: size.width * 0.75,
                                    margin: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  'Learning Plan',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 120,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 10,
                                    offset:
                                        Offset(0, 4), // Shadow position (x, y)
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  ListTile(
                                    leading: Icon(
                                      Icons.radio_button_on_outlined,
                                      size: 20,
                                    ),
                                    title: Text(
                                      "Packaging Design",
                                    ),
                                    trailing: Text(
                                      "40/48",
                                    ),
                                    tileColor: Colors.transparent,
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    onTap: () {
                                      // Handle tap action here
                                    },
                                  ),
                                  ListTile(
                                    leading: Icon(
                                      Icons.radio_button_on_outlined,
                                      size: 20,
                                    ),
                                    title: Text(
                                      "Product Design",
                                    ),
                                    trailing: Text(
                                      "40/48",
                                    ),
                                    tileColor: Colors.transparent,
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    onTap: () {
                                      // Handle tap action here
                                    },
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 120,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 239, 224, 255),
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 10,
                                    offset:
                                        Offset(0, 4), // Shadow position (x, y)
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "Meetup",
                                        style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 68, 6, 135),
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "Off-line exchange of learning experience",
                                        style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 68, 6, 135),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 11,
              left: 0,
              right: 0,
              child: Container(
                height: 100,
                width: 350,
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0, 4), // Shadow position (x, y)
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                    left: 20,
                    right: 20,
                    bottom: 10,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Learned today"),
                          Text(
                            "My courses",
                            style: TextStyle(color: primaryColor),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            "46min",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text("/"),
                          Text(
                            "60min",
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.grey[300],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      LinearProgressIndicator(value: _progress),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
