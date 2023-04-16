import "package:flutter/material.dart";
import "package:test_app/main.dart";
import 'package:animated_splash_screen/animated_splash_screen.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // _navigatetoHome();
  }

  // _navigatetoHome() async {
  //   await Future.delayed(Duration(milliseconds: 1500), () {});
  //   Navigator.pushReplacement(
  //       context, MaterialPageRoute(builder: (context) => HomePage()));
  // }

  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        // duration = 2500,
        splash: Center(
          child: Image.asset(
            "assets/images/xylophone.png",
            height: 450,
          ),
        ),
        duration: 2500,
        nextScreen: HomePage(),
        splashTransition: SplashTransition.scaleTransition,
        // pageTransitionType: PageTransitionType.scale,
        // pageTransitionType: PageTransitionType.scale,
      ),
    );
  }
}
