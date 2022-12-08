import 'package:flutter/cupertino.dart';

import '../color/custom_color.dart';

class DescriptionText extends StatelessWidget {
  final double width;
  final double height;
  final String text;
  const DescriptionText({Key? key, required this.width, required this.height, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: SizedBox(
        width: width,
        height: height,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontStyle: FontStyle.normal,
            color: CustomColor.GREY_545456,
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
