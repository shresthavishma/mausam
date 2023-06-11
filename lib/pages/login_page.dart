import 'package:flutter/material.dart';
import 'package:songsbyweather/widgets/common_widget/custom_text_field.dart';
import 'package:songsbyweather/widgets/common_widget/cutom_button.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController username = TextEditingController();
    TextEditingController password = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomTextField(
              hinttext: "Username",
              textEditingController: username,
              isSuffixIcon: false,
              //suffixIcon: Icons.visibility,
            ),
            CustomTextField(
              isObscure: true,

              hinttext: "Password",
              textEditingController: password,
              isSuffixIcon: true,
              // suffixIcon: Icons.visibility,
            ),
            CustomButton(
                buttonText: "Data",
                onTap: () {
                  print("User entered data is ${username.text}");
                })
          ],
        ),
      ),
    );
  }
}
