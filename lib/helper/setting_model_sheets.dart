import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/theme_provider.dart';

Future displaySettingModelSheets(BuildContext context) {
  final themeChange = Provider.of<DarkThemeProvider>(context, listen: false);
  return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Wrap(
          children: [
            ListTile(
              title: Text(themeChange.darkTheme ? "Light Theme" : "Dark Theme"),
              leading: Icon(
                Icons.cloud_outlined,
              ),
              onTap: () => themeChange.darkTheme != themeChange.darkTheme,
            ),
            ListTile(
              title: Text('Location'),
              leading: Icon(
                Icons.map_outlined,
              ),
            ),
            ListTile(
              title: Text('Contact Us'),
              leading: Icon(
                Icons.message_outlined,
              ),
            ),
            ListTile(
              title: Text('Check update'),
              leading: Icon(
                Icons.sync_outlined,
              ),
            ),
          ],
        );
      });
}
