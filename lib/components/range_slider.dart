import 'package:flutter/material.dart';
import 'package:ilearn/components/colors.dart';

class RangeSliderScreen extends StatefulWidget {
  const RangeSliderScreen({super.key});

  @override
  _RangeSliderScreenState createState() => _RangeSliderScreenState();
}

class _RangeSliderScreenState extends State<RangeSliderScreen> {
  double minPrice = 90; // Starting price
  double maxPrice = 200; // Ending price
  final double minLimit = 0;
  final double maxLimit = 500;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Range Slider
          Column(
            children: [
              RangeSlider(
                values: RangeValues(minPrice, maxPrice),
                min: minLimit,
                max: maxLimit,
                activeColor: primaryColor, // Blue line in between
                inactiveColor: Colors.grey[300], // Grey outer lines
                onChanged: (RangeValues values) {
                  setState(() {
                    minPrice = values.start;
                    maxPrice = values.end;
                  });
                },
              ),

              // Prices Below Each Handle
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$${minPrice.toInt()}",
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "\$${maxPrice.toInt()}",
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
