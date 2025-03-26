import 'package:flutter/material.dart';
import 'package:ilearn/components/range_slider.dart';
import 'package:ilearn/components/colors.dart';

class SelectableContainers extends StatefulWidget {
  const SelectableContainers({super.key});

  @override
  _SelectableContainersState createState() => _SelectableContainersState();
}

class _SelectableContainersState extends State<SelectableContainers> {
  List<bool> isSelected =
      List.generate(6, (index) => false); // Selection tracker
  final List<String> labels = [
    "Design",
    "Painting",
    "Coding",
    "Music",
    "Visual Identity",
    "Mathematics"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Search Filter",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Categories",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 16),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, // 3 per row
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 6,
              ),
              itemCount: labels.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      isSelected[index] = !isSelected[index];
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color:
                          isSelected[index] ? primaryColor : Colors.grey[300],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      labels[index], // Set text dynamically
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: 16),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Price",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            RangeSliderScreen(),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Duration",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 16),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, // 3 per row
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 6,
              ),
              itemCount: labels.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      isSelected[index] = !isSelected[index];
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color:
                          isSelected[index] ? primaryColor : Colors.grey[300],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      labels[index], // Set text dynamically
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                  ),
                );
              },
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1, // Less flex to make it shorter
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent, // Transparent fill
                      foregroundColor: primaryColor, // Text color
                      shadowColor: Colors.transparent, // No shadow
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: BorderSide(color: primaryColor), // Blue border
                      ),
                    ),
                    child: Text("Clear"),
                  ),
                ),
                SizedBox(width: 10), // Space between buttons

                Expanded(
                  flex: 2, // More flex to make it longer
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor, // Filled blue color
                      foregroundColor: Colors.white, // Text color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: BorderSide(color: primaryColor), // Blue border
                      ),
                    ),
                    child: Text("Apply Filter"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
