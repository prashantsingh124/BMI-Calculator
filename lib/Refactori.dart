import 'package:flutter/material.dart';
class Refactori extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  Function foss;
  Refactori(this.colour,{this.cardChild,this.foss});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: foss,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}