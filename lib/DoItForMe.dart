import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'IconContent.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Refactori.dart';
import 'constants.dart';
import 'second_page.dart';
import 'BrainMaster.dart';
const activeCardColor=Color(0xFF111328);
const inactiveCardColor=Color(0xFF1D1E33);
int height=180;
int weight=68;
int age=30;
enum gen{
  male,
  female
}
gen Gender;
class DoItForMe extends StatefulWidget {
  @override
  _DoItForMeState createState() => _DoItForMeState();
}

class _DoItForMeState extends State<DoItForMe> {
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
    body:
      Column(
      children: <Widget>[
        Expanded(
          flex: 3,
          child: Row(
            children: <Widget>[
              Expanded(
                child: Refactori(Gender==gen.male?activeCardColor:inactiveCardColor,
                    cardChild: IconContent(
                      gender: 'Male',
                      ice: FontAwesomeIcons.mars,
                    ),
                      foss: (){
                        setState(() {
                          Gender=gen.male;
                        });
                      },
                ),
              ),
              Expanded(
                  child:Refactori(
                    Gender==gen.female?activeCardColor:inactiveCardColor,
                    cardChild: IconContent(
                      gender: 'Female',
                      ice: FontAwesomeIcons.venus,
                    ),
                    foss: (){
                      setState(() {
                        Gender=gen.female;
                      });
                    },
                  ),
              ),
            ],
          ),
        ),
        Expanded(
            flex: 3,
            child: Refactori(
               Color(0xFF1D1E33),
               cardChild: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Height',
                    style: klabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style :kThickText,
                      ),
                      Text(
                        'cm',
                        style: klabelTextStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xFF8D8E98),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double newValue){
                        setState(() {
                          height=newValue.round();
                        });
                      },
                      //activeColor: Colors.white,
                      //inactiveColor: Color(0xFF8D8E98),
                    ),
                  )
                ],
               )
        ),
        ),
        Expanded(
          flex: 3,
          child: Row(
            children: <Widget>[
              Expanded(
                  child: Refactori(
                      Color(0xFF1D1E33),
                     cardChild: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: <Widget>[
                         Text(
                           'Weight',
                           style: klabelTextStyle,
                         ),
                         Text(
                           weight.toString(),
                           style: kThickText,
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: <Widget>[
                             RoundIconButton(
                               ice: FontAwesomeIcons.plus,
                               f:(){
                                 setState(() {
                                   weight++;
                                 });
                               }
                             ),
                             SizedBox(
                               width: 10.0,
                             ),
                             RoundIconButton(
                               ice: FontAwesomeIcons.minus,
                               f:(){
                                 setState(() {
                                   weight--;
                                 });
                               }
                             )
                           ],
                         )
                       ],
                  ),

              ),
              ),
              Expanded(
                  child: Refactori(
              Color(0xFF1D1E33),
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Age',
                            style: klabelTextStyle,
                          ),
                          Text(
                            age.toString(),
                            style: kThickText,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(
                                  ice: FontAwesomeIcons.plus,
                                  f:(){
                                    setState(() {
                                      age++;
                                    });
                                  }
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundIconButton(
                                  ice: FontAwesomeIcons.minus,
                                  f:(){
                                    setState(() {
                                      age--;
                                    });
                                  }
                              )
                            ],
                          )
                        ],
                      ),
              ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: GestureDetector(
            child: Container(
              child: Center(
                child: Text(
                  'Calculate',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  )
                ),
              ),
              width: double.infinity,
              color: Color(0xFFEB1555)

            ),
            onTap: (){
              Calculate cal=Calculate(
                height: height,
                weight: weight,
              );
              Navigator.push(
                context,
                MaterialPageRoute(
                   builder:(context)=> TyApp(
                    ans: cal.calculateBMI(),
                    result: cal.getResult(),
                    suggest: cal.suggestion(),
                  ),
                ),
              );
            },
          ),
        )
      ],
    )
    );
  }
}

class RoundIconButton extends StatelessWidget {
  IconData ice;
  Function f;
  RoundIconButton({this.ice,this.f});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      fillColor: Color(0xFF4C4F5E),
      child: Icon(ice),
      onPressed: f,
    );
  }
}



