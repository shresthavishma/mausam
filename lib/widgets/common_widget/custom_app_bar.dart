import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/search_icon_provider.dart';
import '../home_widget/search_widget.dart';

PreferredSizeWidget customAppBar(BuildContext context) {
  final searchIconProvider = Provider.of<SearchIconProvider>(context);
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    actions: [
      IconButton(
        onPressed: () {
          searchIconProvider.searchIcon();
          searchIconProvider.isIconSearch
              ? showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Search'),
                      content: SearchWidget(),
                    );
                  }).then((value) => searchIconProvider.searchIcon())
              : Placeholder();
        },
        icon: searchIconProvider.isIconSearch
            ? Icon(Icons.cancel_outlined)
            : Icon(
                Icons.search,
              ),
      ),
    ],
  );
}
