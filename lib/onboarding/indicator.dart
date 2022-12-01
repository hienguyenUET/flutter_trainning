import 'package:flutter/material.dart';
import 'package:flutter_trainning/color/custom_color.dart';

class Indicator extends StatelessWidget {
  final int positionIndex, currentIndex;

  const Indicator({super.key, required this.currentIndex, required this.positionIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8,
      width: 8,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.transparent),
          color: positionIndex == currentIndex ? CustomColor.YELLOW_F4AD22 : CustomColor.GREY_DEDEDE,
          borderRadius: BorderRadius.circular(100)),
    );
  }
}
