import 'package:flutter/material.dart';

class SliderDot extends StatelessWidget {
  final bool? isActive;
  const SliderDot({
    Key? key,
    this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 4,
      width: isActive! ? 8 : 4,
      duration: Duration(milliseconds: 100),
      decoration: BoxDecoration(
          color: isActive! ? Colors.white : Colors.white54,
          borderRadius: BorderRadius.all(Radius.circular(5))),
    );
  }
}
