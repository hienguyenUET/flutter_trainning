import 'package:flutter/material.dart';
import 'package:flutter_trainning/onboarding/select_language_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image(
          image: AssetImage("assets/onboarding/lightning.png"),
          width: 200,
          height: 200,
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _navigateToLanguageScreen();
  }

  void _navigateToLanguageScreen() async {
    await Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SelectLanguageScreen()));
    });
  }
}
