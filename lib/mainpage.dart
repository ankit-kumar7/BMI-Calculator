import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'layout.dart';
import 'icon-content.dart';

const Color inactiveColor = Colors.white70;
const Color activeColor = Colors.white38;


class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
//either male or female
  String gender;
  //either + or -
  String operation;
  Color maleColor = inactiveColor , femaleColor = inactiveColor;

  int height=120;

  int weight = 5 , age = 5;

  // Change the color on tap

  void changeColor(gender)
  {
     if(gender=="male")
       {
         maleColor = activeColor;
         femaleColor = inactiveColor;
       }
     else
       {
         maleColor = inactiveColor;
         femaleColor = activeColor;
       }
  }

  void changeWeight(operation)
  {
      if(operation=="+")
        {
          if(weight<300)
            weight += 1;
        }
      else if(operation=="-")
        {
          if(weight>1)
            weight -=1;
        }
  }

  void changeAge(operation)
  {
    if(operation=="+")
    {
      if(age<125)
        age += 1;
    }
    else if(operation=="-")
    {
      if(age>1)
        age -=1;
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      child: Layout(
                        cardChild: IconContent(
                          gender: FontAwesomeIcons.mars,
                          data: "MALE",
                        ),
                        color: maleColor,
                      ),
                      onTap: ()
                      {
                          setState(() {
                            changeColor("male");
                          });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: GestureDetector(
                      child: Layout(
                        cardChild: IconContent(
                          gender: FontAwesomeIcons.venus,
                          data: "FEMALE",
                        ),
                        color: femaleColor,
                      ),
                      onTap: ()
                      {
                        setState(() {
                          changeColor("female");
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Layout(
                cardChild: Column(
                  children: <Widget>[
                    Text("HEIGHT",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 23.0,
                      color: Colors.lightGreenAccent,
                      fontStyle: FontStyle.italic,
                    ),),
                    Size,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(height.toString(),
                        style: ContentStyle
                        ),
                        Text("cm",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.lightGreenAccent,
                        thumbColor: Colors.pinkAccent,
                        overlayColor: Colors.pinkAccent[100],
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 13.0),
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 20.0),
                      ),
                      child: Slider(
                        min: 50.0,
                        max:200.0,
                        value: height.toDouble(),
                        inactiveColor: Colors.white,
                        onChanged: (double newValue)
                        {
                          setState(() {
                            height = newValue.toInt();
                          });
                        },
                      ),
                    ),
                  ],
                ),
                color: inactiveColor,
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Layout(
                      color: inactiveColor,
                      cardChild: Column(
                        children: <Widget>[
                          Text("WIEGHT",
                          style: wightAgeStyle),
                          Size,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.ideographic,
                            children: <Widget>[
                              Text(weight.toString(),
                              style: ContentStyle,),
                              Text("Kg",
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              IncrementDecrement(
                                margin: const EdgeInsets.only(left:15.0),
                                logo: "+",
                                functionOnTap: ()
                                {
                                  setState(() {
                                    changeWeight("+");
                                  });
                                },
                              ),
                              IncrementDecrement(
                                margin: const EdgeInsets.only(left:20.0),
                                logo: "-",
                                functionOnTap: ()
                                {
                                  setState(() {
                                    changeWeight("-");
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Layout(
                      color: inactiveColor,
                      cardChild: Column(
                        children: <Widget>[
                          Text("Age",
                              style: wightAgeStyle),
                          Size,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.ideographic,
                            children: <Widget>[
                              Text(age.toString(),
                                style: ContentStyle,),
                              Text("Yr",
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              IncrementDecrement(
                                margin: const EdgeInsets.only(left:15.0),
                                logo: "+",
                                functionOnTap: ()
                                {
                                  setState(() {
                                    changeAge("+");
                                  });
                                },
                              ),
                              IncrementDecrement(
                                margin: const EdgeInsets.only(left:20.0),
                                logo: "-",
                                functionOnTap: ()
                                {
                                  setState(() {
                                    changeAge("-");
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            FlatButton(
              child: Container(
                margin: const EdgeInsets.all(8.0),
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Text("Calculate",
                  style: TextStyle(
                    fontSize: 40.0,
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                  ),),
                ),
                width:double.infinity,
                decoration: BoxDecoration(
                  color: Colors.pinkAccent,
                  borderRadius: BorderRadius.circular(40.0),
                ),
              ),
              onPressed: ()
              {
                Navigator.pushNamed(context,"/result");
              },
            ),
          ],
        ),
      ),
    );
  }
}



