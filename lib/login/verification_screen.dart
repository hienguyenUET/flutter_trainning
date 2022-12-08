import 'package:flutter/material.dart';
import 'package:flutter_trainning/color/custom_color.dart';
import 'package:flutter_trainning/login/first_time_login_screen.dart';
import 'package:flutter_trainning/login/second_time_login_screen.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  bool _isFirstTime = false;

  @override
  void initState() {
    super.initState();

    // _isFirstTime = CommonPreference.sharedPreferences.getBool("isFirstTime")!;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.white,
            leading: BackButton(
              color: CustomColor.BLACK_323232,
            ),
            title: Text(
              "Verification code",
              style: TextStyle(
                color: CustomColor.BLACK_242426,
                fontWeight: FontWeight.w700,
                fontSize: 16,
                fontStyle: FontStyle.normal,
              ),
            ),
            centerTitle: true,
          ),
          body: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome to Mosan",
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24, color: CustomColor.BLACK_242426, fontStyle: FontStyle.normal),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        "0359606820 - ***** ** SY",
                        style: TextStyle(color: CustomColor.YELLOW_F4AD22, fontSize: 18, fontWeight: FontWeight.w600, fontStyle: FontStyle.normal),
                      ),
                    ),
                    _isFirstTime ? const FirstTimeLogin() : const SecondTimeLogin(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      onWillPop: () async {
        // return false will stay on the same page
        return true;
      },
    );
  }
}
