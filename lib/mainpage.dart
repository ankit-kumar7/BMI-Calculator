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
                  Expanded(
                    child: Layout(),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Layout(),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Layout(),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Layout(),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Layout(),
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
    return Container(
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white54,
        borderRadius: BorderRadius.circular(30.0),
      ),
                  );
  }
}

