// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String hinttext;
  final TextEditingController textEditingController;
  final bool? isObscure;

  final bool isSuffixIcon;
  const CustomTextField({
    Key? key,
    required this.hinttext,
    required this.textEditingController,
    this.isObscure,
    required this.isSuffixIcon,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isHidden = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        obscureText: widget.isObscure ?? isHidden,
        controller: widget.textEditingController,
        decoration: InputDecoration(
          hintText: widget.hinttext,
          suffixIcon: widget.isSuffixIcon
              ? IconButton(
                  icon: isHidden
                      ? Icon(Icons.visibility)
                      : Icon(Icons.visibility_off),
                  onPressed: () {
                    setState(() {
                      isHidden = !isHidden;
                    });
                  },
                )
              : null,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
