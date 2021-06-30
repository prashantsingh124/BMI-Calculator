
import 'package:flutter/material.dart';
class IconContent extends StatelessWidget {
  String gender;
  IconData ice;
  IconContent({this.gender,this.ice});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          ice,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
            gender,
            style: TextStyle(
              fontSize: 18.0,
              color: Color(0xFF808098),
            )
        ),
      ],
    );
  }
}