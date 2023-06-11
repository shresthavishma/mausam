import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:songsbyweather/models/weather_location.dart';

import '../widgets/common_widget/Custom_TextSourceSansPro.dart';

class SingleWeather extends StatelessWidget {
  final int index;
  SingleWeather(this.index);
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Container(
        width: _width,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  Locationslist[index].city,
                  style: GoogleFonts.openSans(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  Locationslist[index].dateTime,
                  style: GoogleFonts.montserrat(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  Locationslist[index].temperature,
                  style: GoogleFonts.openSans(
                    fontSize: 70,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      Locationslist[index].iconUrl,
                      height: 20,
                      width: 20,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      Locationslist[index].weatherType,
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          CustomTextSourceSansPro(
                            text: 'Wind',
                            isBold: true,
                            fontsize: 20,
                            color: Colors.white,
                          ),
                          CustomTextSourceSansPro(
                            text: Locationslist[index].wind.toString(),
                            fontsize: 16,
                            isBold: false,
                            color: Colors.white,
                          ),
                          CustomTextSourceSansPro(
                              text: 'km/h',
                              fontsize: 12,
                              color: Colors.white,
                              isBold: true),
                          Stack(
                            children: [
                              Container(
                                height: 5,
                                width: 50,
                                color: Colors.grey,
                              ),
                              Container(
                                height: 5,
                                width: 25,
                                color: Color.fromARGB(255, 238, 108, 9),
                              ),
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          CustomTextSourceSansPro(
                            text: 'Rain',
                            isBold: true,
                            fontsize: 20,
                            color: Colors.white,
                          ),
                          CustomTextSourceSansPro(
                            text: Locationslist[index].rain.toString(),
                            fontsize: 16,
                            isBold: false,
                            color: Colors.white,
                          ),
                          CustomTextSourceSansPro(
                              text: '%',
                              fontsize: 12,
                              color: Colors.white,
                              isBold: true),
                          Stack(
                            children: [
                              Container(
                                height: 5,
                                width: 50,
                                color: Colors.grey,
                              ),
                              Container(
                                height: 5,
                                width: 5,
                                color: Color.fromARGB(255, 124, 79, 250),
                              ),
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          CustomTextSourceSansPro(
                            text: 'Humidity',
                            isBold: true,
                            fontsize: 20,
                            color: Colors.white,
                          ),
                          CustomTextSourceSansPro(
                            text: Locationslist[index].humidity.toString(),
                            fontsize: 16,
                            isBold: false,
                            color: Colors.white,
                          ),
                          CustomTextSourceSansPro(
                              text: '%',
                              fontsize: 12,
                              color: Colors.white,
                              isBold: true),
                          Stack(
                            children: [
                              Container(
                                height: 5,
                                width: 50,
                                color: Colors.grey,
                              ),
                              Container(
                                height: 5,
                                width: 10,
                                color: Color.fromARGB(255, 9, 238, 89),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  height: 0.5,
                  color: Colors.white,
                  width: _width,
                ),
                Text(
                  'Songs : Chill lofi',
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
