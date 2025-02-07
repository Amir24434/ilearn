import 'package:flutter/material.dart';
import 'package:ilearn/components/buttons.dart';
import 'package:ilearn/components/colors.dart';

class PhoneVerificationScreen extends StatefulWidget {
  const PhoneVerificationScreen({super.key});

  @override
  _PhoneVerificationScreenState createState() =>
      _PhoneVerificationScreenState();
}

class _PhoneVerificationScreenState extends State<PhoneVerificationScreen> {
  final List<TextEditingController> _controllers =
      List.generate(4, (index) => TextEditingController());
  final List<FocusNode> _focusNodes = List.generate(4, (index) => FocusNode());

  void _onKeyPressed(String value) {
    for (int i = 0; i < _controllers.length; i++) {
      if (_controllers[i].text.isEmpty) {
        setState(() {
          _controllers[i].text = value;
        });
        if (i < _controllers.length - 1) {
          FocusScope.of(context).requestFocus(_focusNodes[i + 1]);
        }
        break;
      }
    }
  }

  void _onBackspacePressed() {
    for (int i = _controllers.length - 1; i >= 0; i--) {
      if (_controllers[i].text.isNotEmpty) {
        setState(() {
          _controllers[i].clear();
        });
        FocusScope.of(context).requestFocus(_focusNodes[i]);
        break;
      }
    }
  }

  void _verifyCode() {
    String code = _controllers.map((controller) => controller.text).join();
    if (code.length == 4) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Code Entered: $code')));
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Please enter all 4 digits.')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Verify Phone",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "Code is sent to",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    letterSpacing: 2,
                  ),
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    4,
                    (index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: SizedBox(
                          width: 50,
                          child: TextField(
                            controller: _controllers[index],
                            focusNode: _focusNodes[index],
                            readOnly: true,
                            textAlign: TextAlign.center,
                            maxLength: 1,
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                            decoration: InputDecoration(
                              counterText: "",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: 80),
              Spacer(),
              Button1(
                color: primaryColor,
                text: "Verify and Create Account",
                bgColor: primaryColor,
                textColor: Colors.white,
                onPressed: _verifyCode,
              ),
              SizedBox(height: 50),
              _buildNumberKeypad(),
              SizedBox(height: 30),
            ],
          ),
        ),
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
            SizedBox(width: 100),
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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(
              color: Colors.transparent,
            ),
          ),
          padding: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 30,
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
      ),
    );
  }
}
