import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Widget child;
  final Color color;

  ReusableCard({@required this.color, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: color),
      margin: EdgeInsets.all(15),
    );
  }
}
