import 'package:animatedcontainer/screens/chat_screen.dart';
import 'package:animatedcontainer/screens/login_screen.dart';
import 'package:animatedcontainer/screens/registration_screen.dart';
import 'package:flutter/material.dart';

import 'screens/welcom_screen.dart';

void main() => runApp(FreeChat());

class FreeChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      // theme: ThemeData.dark().copyWith(
      //   textTheme: TextTheme(
      //     body1: TextStyle(color: Colors.black54),
      //   ),
      // ),
      home: WelcomeScreen(),
      initialRoute:WelcomeScreen.id ,
      routes:{
       
       WelcomeScreen.id :(context)=>WelcomeScreen(),
        LoginScreen.id:(context)=>LoginScreen(),
        RegistrationScreen.id:(context)=>RegistrationScreen(),
        ChatScreen.id:(context)=>ChatScreen()
      }
    );
  }
}
