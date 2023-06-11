import 'package:shared_preferences/shared_preferences.dart';

class IntroScreenPreferences {
  setIntroScreen() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.setBool('intro_screen', true);
  }

  getIntroScreen() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('intro_screen');
  }
}
