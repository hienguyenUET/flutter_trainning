import 'package:flutter/material.dart';
import 'package:flutter_trainning/color/custom_color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(328),
          child: AppBar(
            backgroundColor: CustomColor.YELLOW_F4AD22,
            flexibleSpace: Padding(
              padding: EdgeInsets.zero,
              child: Stack(
                children: [
                  const Center(
                    child: Image(
                      image: AssetImage('assets/home/background.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.zero,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 90,
                        left: 16,
                      ),
                      child: Text(
                        "Click here to Login",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white.withOpacity(0.5),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 53,
                      left: 275,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(8),
                            ),
                            color: Colors.white.withOpacity(0.2),
                          ),
                          child: const IconButton(
                            onPressed: null,
                            icon: Image(
                              image: AssetImage("assets/home/qr1.png"),
                              height: 22.56,
                              width: 22.56,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(8),
                            ),
                            color: Colors.white.withOpacity(0.2),
                          ),
                          // TODO: Add padding between two button
                          child: const IconButton(
                            onPressed: null,
                            icon: Image(
                              image: AssetImage("assets/home/notice.png"),
                              height: 22.56,
                              width: 22.56,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
