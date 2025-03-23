// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:ilearn/components/colors.dart';

class CoursesTile extends StatelessWidget {
  const CoursesTile({
    super.key,
    required this.size,
    required this.courseName,
    required this.instructorName,
    required this.price,
    required this.time,
  });

  final Size size;
  final String courseName;
  final String instructorName;
  final int price;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: Material(
        elevation: 8.0, // Increase this value to get more elevation
        borderRadius: BorderRadius.circular(20), // Optional: Rounded corners
        shadowColor:
            Colors.grey.withOpacity(0.5), // Optional: Customize shadow color
        child: ListTile(
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
                    courseName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 3),
                  Row(
                    children: [
                      Icon(Icons.person, color: Colors.grey, size: 15),
                      Text(
                        instructorName,
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Colors.grey,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 3),
                  Row(
                    children: [
                      Text(
                        "\$",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: primaryColor,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        price.toString(),
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
                            time,
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
          contentPadding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
          onTap: () {
            // Handle tap action here
          },
        ),
      ),
    );
  }
}
