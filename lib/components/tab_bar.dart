import 'package:flutter/material.dart';
import 'package:ilearn/components/colors.dart';

class TabBarNav extends StatelessWidget {
  const TabBarNav({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          bottom: TabBar(
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
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ListTile(
                    leading: SizedBox(
                      height: 50,
                      width: 50,
                      child: Image.asset("name"),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Product Design v1.0",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.person,
                                    color: Colors.grey, size: 15),
                                Text(
                                  "Robertson Connie",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "\$190",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: primaryColor,
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  height: 20,
                                  color: Colors.grey[100],
                                  padding: EdgeInsets.symmetric(horizontal: 5),
                                  child: Center(
                                    child: Text(
                                      "16 hours",
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    tileColor: Colors.white,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.03),
                    onTap: () {
                      // Handle tap action here
                    },
                  ),
                  SizedBox(height: 10),
                  ListTile(
                    leading: SizedBox(
                      height: 50,
                      width: 50,
                      child: Image.asset("name"),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Java Development",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.person,
                                    color: Colors.grey, size: 15),
                                Text(
                                  "Nguyen Shane",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "\$190",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: primaryColor,
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  height: 20,
                                  color: Colors.grey[100],
                                  padding: EdgeInsets.symmetric(horizontal: 5),
                                  child: Center(
                                    child: Text(
                                      "16 hours",
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    tileColor: Colors.white,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.03),
                    onTap: () {
                      // Handle tap action here
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    leading: SizedBox(
                      height: 50,
                      width: 50,
                      child: Image.asset("name"),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Visual Design",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.person,
                                    color: Colors.grey, size: 15),
                                Text(
                                  "Bert Pullman",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "\$250",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: primaryColor,
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  height: 20,
                                  color: Colors.grey[100],
                                  padding: EdgeInsets.symmetric(horizontal: 5),
                                  child: Center(
                                    child: Text(
                                      "14 hours",
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    tileColor: Colors.white,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.03),
                    onTap: () {
                      // Handle tap action here
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    leading: SizedBox(
                      height: 50,
                      width: 50,
                      child: Image.asset("name"),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Product Design v1.0",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.person,
                                    color: Colors.grey, size: 15),
                                Text(
                                  "Robertson Connie",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "\$190",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: primaryColor,
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  height: 20,
                                  color: Colors.grey[100],
                                  padding: EdgeInsets.symmetric(horizontal: 5),
                                  child: Center(
                                    child: Text(
                                      "16 hours",
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    tileColor: Colors.white,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.03),
                    onTap: () {
                      // Handle tap action here
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    leading: SizedBox(
                      height: 50,
                      width: 50,
                      child: Image.asset("name"),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Product Design v1.0",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.person,
                                    color: Colors.grey, size: 15),
                                Text(
                                  "Robertson Connie",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "\$190",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: primaryColor,
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  height: 20,
                                  color: Colors.grey[100],
                                  padding: EdgeInsets.symmetric(horizontal: 5),
                                  child: Center(
                                    child: Text(
                                      "16 hours",
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    tileColor: Colors.white,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.03),
                    onTap: () {
                      // Handle tap action here
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            Center(
                child: Text('Popular Content', style: TextStyle(fontSize: 24))),
            Center(child: Text('New Content', style: TextStyle(fontSize: 24))),
          ],
        ),
      ),
    );
  }
}
