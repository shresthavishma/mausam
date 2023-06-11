import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onTap;
  const CustomButton({
    super.key,
    required this.buttonText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 16.0),
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.amber,
        ),
        child: Center(
          child: Text(buttonText),
        ),
      ),
    );
  }
}
