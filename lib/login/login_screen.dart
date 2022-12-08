import 'package:flutter/material.dart';
import 'package:flutter_trainning/color/custom_color.dart';
import 'package:flutter_trainning/login/verification_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  _toVerificationScreen() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const VerificationScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children: [
              Stack(
                alignment: Alignment.center,
                children: const [
                  Image(
                    image: AssetImage("assets/login/login_background.png"),
                    fit: BoxFit.fill,
                  ),
                  Image(
                    image: AssetImage(
                      "assets/login/mosan_background.png",
                    ),
                    fit: BoxFit.fill,
                  )
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(24),
                      topLeft: Radius.circular(24),
                    ),
                  ),
                  width: double.infinity,
                  height: 369,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 21,
                        ),
                        child: SizedBox(
                          width: 343,
                          height: 56,
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              fillColor: CustomColor.WHITE_F2F2F2,
                              filled: true,
                              border: const OutlineInputBorder(borderSide: BorderSide.none),
                              hintText: "Enter your phone number",
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 13),
                        child: SizedBox(
                          height: 48,
                          width: 343,
                          child: TextButton(
                            onPressed: _toVerificationScreen,
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  8.0,
                                ),
                              ),
                              backgroundColor: CustomColor.YELLOW_F4AD22,
                            ),
                            child: const Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: TextButton(
                          onPressed: null,
                          child: Text(
                            "Forgot PIN",
                            style: TextStyle(
                              color: CustomColor.BLUE_3F91FF,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            "Do NOT have Mosan account?",
                            style: TextStyle(color: CustomColor.GREY_545456, fontWeight: FontWeight.w600, fontSize: 14),
                          ),
                          const TextButton(
                            onPressed: null,
                            child: Text(
                              "Register",
                              style: TextStyle(
                                color: Colors.amber,
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 46),
                child: Align(
                  alignment: Alignment.topRight,
                  child: SizedBox(
                    height: 45,
                    width: 103,
                    child: TextButton(
                      onPressed: _toVerificationScreen,
                      style: TextButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(14),
                            bottomLeft: Radius.circular(14),
                          ),
                        ),
                        backgroundColor: const Color.fromARGB(50, 0, 0, 0),
                      ),
                      child: const Text(
                        "Skip now",
                        style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
