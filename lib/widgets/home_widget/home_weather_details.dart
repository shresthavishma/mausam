import 'package:flutter/material.dart';

class HomeWeatherDetails extends StatelessWidget {
  final dynamic weatherType;
  final dynamic temperature;
  const HomeWeatherDetails({
    super.key,
    required this.weatherType,
    required this.temperature,
  });

  @override
  Widget build(BuildContext context) {
    final temp = temperature.temp - 273.15;
    final maxTemp = temperature.tempMax - 273.15;

    final minTemp = temperature.tempMin - 273.15;
    ;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(
                  text: "${temp.toStringAsFixed(2)}°C",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 38.0,
                    fontWeight: FontWeight.w500,
                  ),
                  children: [
                    TextSpan(
                      text: " $weatherType",
                      style: TextStyle(
                        color: Colors.white60,
                        fontSize: 24.0,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "${maxTemp.roundToDouble()}/${minTemp.roundToDouble()}",
                style: TextStyle(
                  color: Colors.white60,
                  fontSize: 28.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16.0,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _displayWetheerDetails(
                  title: "Wind", value: 0, image: "wind-power"),
              _displayWetheerDetails(title: "Rain", value: 0, image: "water"),
              _displayWetheerDetails(
                  title: "Humidity", value: 0, image: "humidity"),
            ],
          ),
        ],
      ),
    );
  }

  Widget _displayWetheerDetails({String? title, double? value, String? image}) {
    return Card(
      child: Container(
        width: 90,
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.redAccent,
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                "assets/icons/${image}.png",
                width: 30,
                height: 30,
              ),
            ),
            SizedBox(
              height: 6.0,
            ),
            Text("${value} km/h"),
            SizedBox(
              height: 4.0,
            ),
            Divider(
              height: 1,
              thickness: 1,
              color: Colors.black38,
            ),
            SizedBox(
              height: 4.0,
            ),
            Text("${title}"),
          ],
        ),
      ),
    );
  }
}
