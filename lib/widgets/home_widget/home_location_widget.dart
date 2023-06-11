import 'package:flutter/material.dart';

import '../../helper/setting_model_sheets.dart';

class HomeLocationWidget extends StatelessWidget {
  final String location;
  const HomeLocationWidget({
    super.key,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Text(
        "$location",
        style: TextStyle(
          color: Colors.white,
          fontSize: 32.0,
          fontWeight: FontWeight.bold,
          letterSpacing: 0.9,
        ),
      ),
    );
  }
}
