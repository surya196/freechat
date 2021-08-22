import 'package:animatedcontainer/screens/chat_screen.dart';
import 'package:animatedcontainer/widgets/RoundButton.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../contants.dart';

class LoginScreen extends StatefulWidget {
  static const id = 'LoginScreen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _auth = FirebaseAuth.instance;
  String email = '';
  String pasword = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: Container(
                height: 200.0,
                child: Image.asset('images/download.jpg'),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            TextField(
                onChanged: (value) {
                  email = value;
                  //Do something with the user input.
                },
                decoration:
                    ktextfielddec.copyWith(hintText: 'Enter your Email')),
            SizedBox(
              height: 8.0,
            ),
            TextField(
                onChanged: (value) {
                  pasword = value;
                  //Do something with the user input.
                },
                decoration:
                    ktextfielddec.copyWith(hintText: 'Enter your password')),
            SizedBox(
              height: 24.0,
            ),
            RoundButton(
              onpresed: () async {
                try{
                final user = await _auth.signInWithEmailAndPassword(
                    email: email, password: pasword);
                if (user != null) {
                  Navigator.pushNamed(context, ChatScreen.id);
                }
                }catch(e){
                  print(e);
                }
              },
              color: Colors.lightBlueAccent,
              title: 'Log In',
            ),
          ],
        ),
      ),
    );
  }
}
