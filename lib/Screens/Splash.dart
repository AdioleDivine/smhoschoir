import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:simple_splashscreen/simple_splashscreen.dart';
import 'package:smhoschoir/Navigation/bottomnav.dart';
import 'package:smhoschoir/Screens/Home.dart';

class Splash extends StatefulWidget {
  Splash({Key key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Simple_splashscreen(
      context: context,
      gotoWidget: Navigations(),
      splashscreenWidget: SplashScreen(),
      timerInSeconds: 4,
    );
  }
}

//Splash Screen
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height / 5),
          Center(
            child: Container(
              // height: 500,
              height: MediaQuery.of(context).size.height / 2,
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/min.png'), fit: BoxFit.contain),
              ),
            ),
          ),
          TyperAnimatedTextKit(
            speed: Duration(milliseconds: 160),
            onTap: () {
              print("Tap Event");
            },
            text: [
              "House of Judah",
            ],
            textStyle: TextStyle(fontSize: 20.0, fontFamily: "Bobbers"),
          ),
        ],
      ),
    );
  }
}
