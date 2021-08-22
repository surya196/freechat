import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final Color? color;
  final String? title;
  final Function onpresed;

  const RoundButton({this.color, this.title, required this.onpresed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onpresed(),


          minWidth: 200.0,
          height: 42.0,
          child: Text(
            title!,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
