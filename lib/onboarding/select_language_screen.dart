import 'package:flutter/material.dart';
import 'package:flutter_trainning/color/custom_color.dart';
import 'package:flutter_trainning/onboarding/onboarding_screen_main.dart';

class SelectLanguageScreen extends StatefulWidget {
  const SelectLanguageScreen({Key? key}) : super(key: key);

  @override
  State<SelectLanguageScreen> createState() => _SelectLanguageScreenState();
}

class _SelectLanguageScreenState extends State<SelectLanguageScreen> {
  int _currentButton = 0;

  void changeIndex(int index) {
    setState(() {
      _currentButton = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(
                top: 104,
                right: 68,
                left: 67,
              ),
            ),
            const Text(
              "Select the language to use",
              style: TextStyle(
                fontFamily: 'SF Pro Text',
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 17,
                right: 18,
                top: 24,
              ),
              child: SizedBox(
                width: 343,
                height: 56,
                child: TextButton(
                  onPressed: () {
                    changeIndex(0);
                  },
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        8.0,
                      ),
                    ),
                    backgroundColor: _currentButton == 0 ? CustomColor.YELLOW_F4AD22 : CustomColor.WHITE_F2F2F2,
                  ),
                  child: Row(
                    children: [
                      ImageIcon(
                        AssetImage(
                          "assets/onboarding/timor_flag.png",
                        ),
                        size: 32,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: Text(
                          "Tetum",
                          style: TextStyle(
                            color: _currentButton == 0 ? Colors.white : Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 17,
                right: 18,
                top: 14,
              ),
              child: SizedBox(
                width: 343,
                height: 56,
                child: TextButton(
                  onPressed: () {
                    changeIndex(1);
                  },
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        8.0,
                      ),
                    ),
                    backgroundColor: _currentButton == 1 ? CustomColor.YELLOW_F4AD22 : CustomColor.WHITE_F2F2F2,
                  ),
                  child: Row(
                    children: [
                      // Loi icon o day
                      const ImageIcon(
                        AssetImage("assets/onboarding/england_flag.png"),
                        size: 32,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Text(
                          "English",
                          style: TextStyle(
                            color: _currentButton == 1 ? Colors.white : Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 430),
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
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const OnBoardingScreen()));
                  },
                  child: const Text(
                    "Confirm",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
