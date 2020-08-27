import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Layout(),
                  SizedBox(
                    width: 10.0,
                  ),
                  Layout(),
                ],
              ),
            ),
            Layout(),
            Expanded(
              child: Row(
                children: <Widget>[
                  Layout(),
                  SizedBox(
                    width: 10.0,
                  ),
                  Layout(),
                ],
              ),
            ),
           Expanded(
             child: Container(
               width: double.infinity,
               child: Center(
                 child: Text("Calculate",
                 style: TextStyle(
                   fontStyle: FontStyle.italic,
                   fontSize: 40.0,
                   color: Colors.white,
                 ),),
               ),
             margin: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                 color: Colors.pinkAccent,
                  borderRadius: BorderRadius.circular(20.0),
               ),
            ),
          ),
          ],
        ),
      ),
    );
  }
}

class Layout extends StatelessWidget {
  const Layout({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.white54,
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    );
  }
}
