import 'package:flutter/material.dart';
import 'package:songsbyweather/pages/music_player_screen.dart';
import 'package:songsbyweather/repo/weather_repo.dart';
import 'package:songsbyweather/widgets/common_widget/custom_drawer.dart';
import 'package:songsbyweather/widgets/common_widget/cutom_button.dart';
import 'package:songsbyweather/widgets/home_widget/home_location_widget.dart';
import 'package:songsbyweather/widgets/home_widget/home_music_library.dart';
import 'package:songsbyweather/widgets/home_widget/home_weather_details.dart';

import '../helper/background_type.dart';
import '../widgets/common_widget/custom_app_bar.dart';
import '../widgets/home_widget/home_date_time_widget.dart';

class HomeScreen extends StatefulWidget {
  final String? city;
  const HomeScreen({
    super.key,
    this.city = "Kathmandu",
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: customAppBar(context),
      drawer: CustomDrawer(),
      body: FutureBuilder(
        future: WeatherRepo().fetchWeather(params: '${widget.city}'),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: AlertDialog(
                content: Text("City Not Found"),
                actions: [
                  CustomButton(
                    buttonText: "Go Back",
                    onTap: () => () {},
                  ),
                ],
              ),
            );
          }
          if (snapshot.hasData) {
            final data = snapshot.data;
            return SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child: Stack(
                children: [
                  /**
                     * home background image
                     */
                  Image.asset(
                    "${backgroundType(data!.weather![0].main.toString())}",
                    height: _height,
                    fit: BoxFit.cover,
                  ),
                  /**
                     * background dark color for opacity
                     */
                  Positioned.fill(
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.black38,
                      ),
                    ),
                  ),
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 120.0,
                        ),
                        HomeLocationWidget(location: "${data.name}"),
                        SizedBox(
                          height: 8.0,
                        ),
                        HomeDateTimeWidget(),
                        SizedBox(
                          height: 32.0,
                        ),
                        Image.asset(
                          "assets/images/sky/raining.png",
                          width: MediaQuery.of(context).size.width * 0.80,
                          height: MediaQuery.of(context).size.width * 0.40,
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        HomeWeatherDetails(
                          weatherType: data.weather![0].main,
                          temperature: data.main,
                        ),
                        HomeMusicLibrary(),
                      ],
                    ),
                  )
                ],
              ),
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MusicPlayerScreen(),
          ),
        ),
        child: Icon(
          Icons.browse_gallery_outlined,
        ),
      ),
    );
  }
}
