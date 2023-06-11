import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:songsbyweather/pages/location_screen.dart';
import 'package:songsbyweather/provider/theme_provider.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<DarkThemeProvider>(context);
    return Drawer(
      child: ListView(
        children: [
          _drawerListTile(
            themeChanger.darkTheme ? "Light Theme" : "Dark Theme",
            Icons.cloud_outlined,
            () {
              themeChanger.darkTheme = !themeChanger.darkTheme;
            },
          ),
          _drawerListTile("Location", Icons.my_location_outlined, () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LocationScreen(),
              ),
            );
          }),
          _drawerListTile("Contact Us", Icons.message_outlined, () {}),
        ],
      ),
    );
  }

  Widget _drawerListTile(
    String title,
    IconData icons,
    VoidCallback onTap,
  ) {
    return ListTile(
      onTap: onTap,
      title: Text(title),
      leading: Icon(icons),
    );
  }
}
