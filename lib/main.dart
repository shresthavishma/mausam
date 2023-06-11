import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'package:songsbyweather/pages/splash_screen.dart';
import 'package:songsbyweather/utils/data/list_of_provider.dart';

import 'constant/theme_style.dart';
import 'provider/theme_provider.dart';

late Box box;
void main() async {
  await Hive.initFlutter();
  box = await Hive.openBox('weather');
  //Hive.registerAdapter(WeatherLocationAdapter());
  runApp(
    MultiProvider(
      providers: listOfProviders,
      child: const MyApp(),
    ),
  );
}

// Future<void> main() async {
//   await JustAudioBackground.init(
//     androidNotificationChannelId: 'com.ryanheis.bg_demo.'
//   );
// }

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DarkThemeProvider themeChangeProvider = new DarkThemeProvider();

  @override
  void initState() {
    super.initState();
    getCurrentAppTheme();
  }

  void getCurrentAppTheme() async {
    themeChangeProvider.darkTheme =
        await themeChangeProvider.darkThemePreference.getTheme();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) {
        return themeChangeProvider;
      },
      child: Consumer<DarkThemeProvider>(
        builder: (context, value, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: Styles.themeData(themeChangeProvider.darkTheme, context),
            home: SplashScreen(),
          );
        },
      ),
    );
  }
}
