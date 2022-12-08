import 'package:flutter/material.dart';

import '../color/custom_color.dart';
import 'description_field.dart';

class FirstTimeLogin extends StatefulWidget {
  const FirstTimeLogin({Key? key}) : super(key: key);

  @override
  State<FirstTimeLogin> createState() => _FirstTimeLoginState();
}

class _FirstTimeLoginState extends State<FirstTimeLogin> with TickerProviderStateMixin {
  AnimationController? _controller;
  int levelClock = 120;

  @override
  void dispose() {
    super.dispose();
    _controller!.dispose();
  }

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this, duration: Duration(seconds: levelClock));
    _controller!.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        const DescriptionText(
          width: 328,
          height: 48,
          text: "We noticed this is your first time using the app\n"
              "Please enter OTP to authenticate",
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Container(
                  width: 336,
                  height: 56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: CustomColor.WHITE_F2F2F2,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 250,
                        height: double.maxFinite,
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Enter OTP",
                            hintStyle: TextStyle(
                              color: CustomColor.GREY_545456,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Countdown(
                        animation: StepTween(
                          begin: levelClock,
                          end: 0,
                        ).animate(_controller!),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Resend",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: CustomColor.BLUE_3F91FF,
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class Countdown extends AnimatedWidget {
  Countdown({super.key, required this.animation}) : super(listenable: animation);
  Animation<int> animation;

  @override
  Widget build(BuildContext context) {
    Duration clockTimer = Duration(seconds: animation.value);
    String timerText = '${clockTimer.inMinutes.remainder(60).toString()}:${clockTimer.inSeconds.remainder(60).toString().padLeft(2, '0')}';

    return Text(
      timerText,
      style: TextStyle(
        fontSize: 14,
        color: CustomColor.YELLOW_F4AD22,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
