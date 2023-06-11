import 'package:flutter/material.dart';
import 'package:songsbyweather/utils/data/list_of_day.dart';

import '../../utils/data/list_of_months.dart';

class HomeDateTimeWidget extends StatelessWidget {
  const HomeDateTimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final today = DateTime.now();
    final day = today.weekday;
    final month = today.month;

    return Text(
      "${listOfDay[day]}, ${list_of_months[month - 1]}",
      style: TextStyle(
        color: Colors.white60,
        fontSize: 16.0,
      ),
    );
  }
}
