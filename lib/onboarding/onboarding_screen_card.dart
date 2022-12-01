import 'package:flutter/material.dart';
import 'package:flutter_trainning/color/custom_color.dart';

class OnBoardingCard extends StatelessWidget {
  final String imageURL;
  final String labelText;
  final String description;
  final double height;
  final double width;

  const OnBoardingCard(
      {super.key, required this.imageURL, required this.labelText, required this.description, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 131,
                  width: double.infinity,
                ),
                Image.asset(
                  imageURL,
                  height: 288,
                  width: 288,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 21,
                  ),
                  child: Text(
                    labelText,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "SF Pro Text",
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                      color: CustomColor.BLACK_242426,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: SizedBox(
                    width: height,
                    height: width,
                    child: Text(
                      description,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: CustomColor.BLACK_242426,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
