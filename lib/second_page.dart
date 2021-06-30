import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Refactori.dart';

class TyApp extends StatelessWidget {
  TyApp({this.ans,this.result,this.suggest});
  String ans;
  String result;
  String suggest;
  Color colour=Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1D1E33),
        title: Center(
          child: Text(
            'BMI Calculator',
            style: TextStyle(
              fontSize: 25.0,
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment:CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              child: Text(
                'Your Result',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50.0,
                ),
              ),
              padding: EdgeInsets.fromLTRB(10.0, 17, 0, 0),
              alignment: Alignment.bottomLeft,
            )
          ),
          Expanded(
            flex: 8,
            child: Refactori(
                Color(0xFF1D1E33),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    result.toUpperCase(),

                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  Text(
                    ans,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 100.0,
                    ),
                  ),
                  Text(
                    suggest,
                    style: TextStyle(
                      fontSize: 22.0,
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: GestureDetector(
              child: Container(
                child: Center(
                  child: Text(
                      'Re Calculate',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      )
                  ),
                ),
                color: Colors.purple,

              ),
              onTap: (){
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
    );
  }
}
