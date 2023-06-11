import 'package:flutter/material.dart';
import 'package:songsbyweather/pages/home_screen.dart';
import 'package:songsbyweather/pages/intro_screen.dart';
import 'package:songsbyweather/shared/into_screen_preferences.dart';

import '../helper/splash_helper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    loadSplashScreen().then(
      (value) => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => IntroScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Splash Screen'),
      ),
      // body: FutureBuilder(
      //   future: IntroScreenPreferences().getIntroScreen(),
      //   builder: (context, AsyncSnapshot snapshot) {
      //     if (snapshot.hasData) {
      //       print(snapshot.data);
      //       return snapshot.data ? HomeScreen() : IntroScreen();
      //     }
      //     return Center(
      //       child: Text("Splash Screen"),
      //     );
      //   },
      // ),
    );
  }
}
