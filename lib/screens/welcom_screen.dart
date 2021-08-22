

import 'package:animatedcontainer/screens/login_screen.dart';
import 'package:animatedcontainer/screens/registration_screen.dart';
import 'package:animatedcontainer/widgets/RoundButton.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  static const id = 'welcomescreen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;
  Animation? animi;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );
    animi = ColorTween(begin: Colors.blueGrey, end: Colors.white)
        .animate(controller!);
    controller!.forward();
    controller!.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: animi!.value,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Hero(
                      tag: 'logo',
                      child: Container(
                        child: Image.asset('images/download.jpg'),
                        height: 60.0,
                      ),
                    ),
                    Text(
                      'Flash Chat',
                      style: TextStyle(
                        fontSize: 45.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 48.0,
                ),
                RoundButton(
                  color: Colors.lightBlueAccent,
                  title: 'Log In',
                  onpresed: () {
                    Navigator.pushNamed(context, LoginScreen.id);
                  },
                ),
                RoundButton(
                    color: Colors.blueAccent,
                    title: 'Register',
                    onpresed: () {
                      Navigator.pushNamed(context, RegistrationScreen.id);
                    }),
                
              ]),
        ));
  }
}


