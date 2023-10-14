import 'package:flutter/material.dart';



class signInButton extends StatelessWidget {
  final String label;

  signInButton({
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      width: double
          .infinity, // Set a fixed width for the button, or you can use a specific value like width: 200,
      height: 55, // Set a fixed height for the button
      child: ElevatedButton(
        onPressed: () {
          print("Sign In Pressed");
        },
        style: ElevatedButton.styleFrom(
          primary: Color(0xFFA900C5), // Background color
          onPrimary: Colors.black, // Text color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          label,
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}