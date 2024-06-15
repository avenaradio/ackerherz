import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void _getLink() {
    // Function to be called when the button is pressed
    print('Button pressed');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Button Example'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: _getLink,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue), // Change background color
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white), // Change text color
              minimumSize: MaterialStateProperty.all<Size>(Size(150, 50)), // Change button size
            ),
            child: Text('Code erhalten'),
          ),
        ),
      ),
    );
  }
}