import 'package:flutter/material.dart';
import 'package:songsbyweather/pages/home_screen.dart';
import 'package:songsbyweather/widgets/common_widget/custom_text_field.dart';
import 'package:songsbyweather/widgets/common_widget/cutom_button.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final _searchController = TextEditingController();
    return Wrap(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black12,
            ),
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: CustomTextField(
            hinttext: 'Search',
            textEditingController: _searchController,
            isSuffixIcon: false,
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          child: CustomButton(
            buttonText: "Search",
            onTap: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(city: _searchController.text),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
