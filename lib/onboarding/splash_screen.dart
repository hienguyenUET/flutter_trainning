import 'package:flutter/material.dart';
import 'package:flutter_trainning/login/login_screen.dart';
import 'package:flutter_trainning/onboarding/select_language_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => sharedPreferences.getString("Selected Language") == null ? const SelectLanguageScreen() : const LoginScreen()));
    });
  }
}
