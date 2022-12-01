import 'package:flutter/material.dart';

import '../color/custom_color.dart';
import 'indicator.dart';
import 'onboarding_content.dart';
import 'onboarding_screen_card.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int _currentIndex = 0;
  PageController _controller = PageController();

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  onChangedFunction(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  nextScreen() {
    _controller.nextPage(duration: const Duration(milliseconds: 30), curve: Curves.linear);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 322,
              top: 56,
            ),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                "Skip",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          PageView(
            onPageChanged: onChangedFunction,
            controller: _controller,
            children: <Widget>[
              OnBoardingCard(
                  imageURL: contents[0].imageURL,
                  labelText: contents[0].labelText,
                  description: contents[0].description,
                  height: contents[0].height,
                  width: contents[0].width),
              OnBoardingCard(
                  imageURL: contents[1].imageURL,
                  labelText: contents[1].labelText,
                  description: contents[1].description,
                  height: contents[1].height,
                  width: contents[1].width),
              OnBoardingCard(
                  imageURL: contents[2].imageURL,
                  labelText: contents[2].labelText,
                  description: contents[2].description,
                  height: contents[2].height,
                  width: contents[2].width)
            ],
          ),
          Positioned(
            bottom: 200,
            left: 167,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Indicator(
                  positionIndex: 0,
                  currentIndex: _currentIndex,
                ),
                const SizedBox(
                  width: 10,
                ),
                Indicator(
                  positionIndex: 1,
                  currentIndex: _currentIndex,
                ),
                const SizedBox(
                  width: 10,
                ),
                Indicator(
                  positionIndex: 2,
                  currentIndex: _currentIndex,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              top: 716,
            ),
            child: SizedBox(
              width: 343,
              height: 48,
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  backgroundColor: CustomColor.YELLOW_F4AD22,
                ),
                onPressed: nextScreen,
                child: Text(
                  _currentIndex == 2 ? "Get Started" : "Next",
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
