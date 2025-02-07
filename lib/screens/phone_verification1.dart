import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ilearn/components/buttons.dart';
import 'package:ilearn/components/colors.dart';

class CustomKeypadScreen extends StatefulWidget {
  const CustomKeypadScreen({super.key});

  @override
  _CustomKeypadScreenState createState() => _CustomKeypadScreenState();
}

class _CustomKeypadScreenState extends State<CustomKeypadScreen> {
  final TextEditingController _controller = TextEditingController();

  void _onKeyPressed(String value) {
    setState(() {
      _controller.text += value;
    });
  }

  void _onBackspacePressed() {
    setState(() {
      if (_controller.text.isNotEmpty) {
        _controller.text =
            _controller.text.substring(0, _controller.text.length - 1);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Continue with Phone",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 240, 240, 242),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              color: Color.fromARGB(255, 240, 240, 242),
              child: Center(
                child: Text(
                  "Enter a number using the custom keypad",
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Text(
                        "Enter your Phone Number",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          letterSpacing: 2,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: _controller,
                            readOnly: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Enter number",
                            ),
                          ),
                        ),
                        Button1(
                          textColor: Colors.white,
                          color: primaryColor,
                          bgColor: primaryColor,
                          text: "Continue",
                          onPressed: () {
                            if (kDebugMode) {
                              print("Submitted: ${_controller.text}");
                            }
                          },
                        ),
                      ],
                    ),
                    Spacer(),
                    _buildNumberKeypad(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNumberKeypad() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: _buildKeypadRow(["1", "2", "3"]),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: _buildKeypadRow(["4", "5", "6"]),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: _buildKeypadRow(["7", "8", "9"]),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(width: 110),
            _buildKey("0", () => _onKeyPressed("0")),
            _buildKey("⌫", _onBackspacePressed),
          ],
        ),
      ],
    );
  }

  List<Widget> _buildKeypadRow(List<String> values) {
    return values
        .map((value) => _buildKey(value, () => _onKeyPressed(value)))
        .toList();
  }

  Widget _buildKey(String value, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(
            color: Colors.transparent,
            width: 1,
          ),
        ),
        padding: EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 40,
        ),
      ),
      child: Text(
        value,
        style: TextStyle(
          fontSize: 24,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
