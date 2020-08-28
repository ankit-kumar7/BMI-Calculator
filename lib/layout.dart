import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  Layout({@required this.cardChild , this.color });

  final Widget cardChild;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: color,
      ),
    );
  }
}
