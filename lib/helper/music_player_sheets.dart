import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

Future musicPlayerModelSheets(BuildContext context) {
  return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Wrap(
            children: [
              Lottie.asset("assets/lottie/music_beat.json"),
              Center(
                child: Text(
                  "Somebody hold my hand",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        );
      });
}
