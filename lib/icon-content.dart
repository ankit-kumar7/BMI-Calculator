import 'package:bmi_calculator/mainpage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const Style = TextStyle(
  color: Colors.lightGreenAccent,
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
);

const wightAgeStyle = TextStyle(
  fontSize: 20.0,
  fontStyle: FontStyle.italic,
  fontWeight: FontWeight.bold,
  color: Colors.lightGreenAccent,
);

const ContentStyle = TextStyle(
fontWeight: FontWeight.w900,
fontStyle: FontStyle.italic,
fontSize: 40.0,
color: Colors.pinkAccent,
);

const Widget Size = SizedBox(
  height: 10.0,
);

class IconContent extends StatelessWidget {
  IconContent({@required this.gender,this.data});

  final IconData gender;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          gender,
          size: 80.0,
          color: Colors.lightGreenAccent,
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          child: Text(data,
            style: Style
        ),
        ),
      ],
    );
  }
}


class IncrementDecrement extends StatelessWidget {
  const IncrementDecrement({@required this.margin , this.logo , this.functionOnTap});

  final EdgeInsetsGeometry margin;
  final String logo;
  final Function functionOnTap;



  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: 50.0,
      width: 50.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: inactiveColor,
      ),
      child: Center(
        child: FlatButton(
          child: Text(logo,
            style: TextStyle(
              color: Colors.pinkAccent,
              fontWeight: FontWeight.bold,
              fontSize: 40.0,
            ),),
          onPressed:functionOnTap,
        ),
      ),
    );
  }
}

