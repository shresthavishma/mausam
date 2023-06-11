// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'dart:ui';
// import 'package:hive/hive.dart';
// import 'package:hive_flutter/hive_flutter.dart';
// import 'package:provider/provider.dart';
// import 'package:songsbyweather/helper/background_type.dart';
// import 'package:songsbyweather/provider/screen_index_provider.dart';
// import 'package:songsbyweather/provider/search_icon_provider.dart';
// import 'package:songsbyweather/widgets/home_widget/search_widget.dart';
// import 'package:songsbyweather/widgets/slider_dots.dart';
// import 'package:flutter/material.dart';
// import 'package:songsbyweather/constant/single_weather.dart';
// import '../models/weather_location.dart';
// import '../widgets/home_widget/home_image_widget.dart';

// class Homepage extends StatefulWidget {
//   @override
//   State<Homepage> createState() => _HomepageState();
// }

// class _HomepageState extends State<Homepage> {
//   @override
//   Widget build(BuildContext context) {
//     final screenIndexProvider = Provider.of<ScreenIndexProvider>(context);
//     final searchIconProvider = Provider.of<SearchIconProvider>(context);

//     final _height = MediaQuery.of(context).size.height;
//     final _width = MediaQuery.of(context).size.width;
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.transparent,
//         actions: [
//           IconButton(
//             onPressed: () {
//               searchIconProvider.searchIcon();
//               searchIconProvider.isIconSearch
//                   ? showDialog(
//                       context: context,
//                       builder: (context) {
//                         return AlertDialog(
//                           title: Text('Search'),
//                           content: SearchWidget(),
//                         );
//                       }).then((value) => searchIconProvider.searchIcon())
//                   : Placeholder();
//             },
//             icon: searchIconProvider.isIconSearch
//                 ? Icon(Icons.cancel_outlined)
//                 : Icon(
//                     Icons.search,
//                   ),
//           ),
//         ],
//       ),
//       drawer: Drawer(),
//       body: Stack(
//         children: [
//           HomeImageWidget(
//             backgroundType: backgroundType,
//             height: _height,
//           ),
//           Positioned.fill(
//             child: DecoratedBox(
//               decoration: BoxDecoration(
//                 color: Colors.black12,
//               ),
//             ),
//           ),
//           Container(
//             padding: EdgeInsets.only(
//               top: 100,
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 for (int i = 0; i <= Locationslist.length; i++)
//                   if (i == screenIndexProvider.currentIndex)
//                     SliderDot(
//                       isActive: true,
//                     )
//                   else
//                     SliderDot(
//                       isActive: false,
//                     )
//               ],
//             ),
//           ),
//           PageView.builder(
//             itemCount: Locationslist.length,
//             onPageChanged: screenIndexProvider.currentScreenIndex,
//             scrollDirection: Axis.horizontal,
//             itemBuilder: (context, index) => SingleWeather(index),
//           ),
//           Positioned(
//             top: 435,
//             left: 8,
//             right: 8,
//             bottom: 4,
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(12),
//               child: BackdropFilter(
//                 filter: ImageFilter.blur(sigmaX: 2, sigmaY: 10),
//                 child: Container(
//                   decoration: BoxDecoration(
//                     color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.1),
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(30),
//                       topRight: Radius.circular(30),
//                     ),
//                   ),
//                   width: _width,
//                 ),
//               ),
//             ),
//           ),
//           Positioned(
//             top: 450,
//             left: 13,
//             right: 13,
//             child: Container(
//               width: 10,
//               height: 250,
//               child: ValueListenableBuilder<Box>(
//                 valueListenable:
//                     Hive.box('weather').listenable(keys: ['weatherApi']),
//                 builder: (context, box, widget) {
//                   if (box.isEmpty) {
//                     return Text('Nothig to display');
//                   }
//                   if (box.isNotEmpty) {
//                     return ListView.builder(
//                         itemCount: box.values.length,
//                         itemBuilder: (context, index) {
//                           final data = box.values.elementAt(index);
//                           return ListTile(
//                             title: Text("${data['sys']['country']}"),
//                           );
//                         });
//                   }
//                   return Center(
//                     child: CircularProgressIndicator(),
//                   );
//                 },
//               ),
//             ),
//           ),
//           // Positioned(
//           //   top: 450,
//           //   left: 13,
//           //   right: 13,
//           //   child: Container(
//           //     height: 120,
//           //     width: 10,
//           //     child: AudioPlayerScreen(),
//           //   ),
//           // ),
//         ],
//       ),
//     );
//   }
// }
