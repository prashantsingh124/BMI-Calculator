
import 'dart:math';

import 'package:flutter/material.dart';
class Calculate{
  int height;
  int weight;
  double BMI;
  Calculate({this.height,this.weight});

  String calculateBMI()
  {
    BMI=(weight/pow(height/100,2));
    return BMI.toStringAsFixed(1);
  }
  String getResult()
  {
    if(BMI>=25)
      return 'OverWeight';
    else if(BMI>18.5)
      return 'Normal';
    else
      return 'UnderWeight';
  }
  String suggestion()
  {
    if(BMI>=25)
      return 'You need to exercise more and cut down your fat intake thereby making yourself healthy';
    else if(BMI>18.5)
      return 'You have perfectly maintained your body, now work on maintaining  your soul';
    else
      return 'You need to eat more else its tough for you to survive';
  }
}