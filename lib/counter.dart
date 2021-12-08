import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Counter extends StatefulWidget {
  final String label;
  final String unitLabel;
  final int initialValue;

  Counter(
      {@required this.label, @required this.unitLabel, this.initialValue = 0});

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int value;

  @override
  Widget build(BuildContext context) {
    if (this.value == null) {
      this.value = widget.initialValue;
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget.label,
          style: kLabelTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              value.toString(),
              style: kScrollerTextStyle,
            ),
            Text(
              widget.unitLabel,
              style: kLabelTextStyle,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundIconButton(
              icon: FontAwesomeIcons.minus,
              onPressed: () {
                setState(() {
                  this.value--;
                });
              },
            ),
            SizedBox(
              width: 10.0,
            ),
            RoundIconButton(
              icon: FontAwesomeIcons.plus,
              onPressed: () {
                setState(() {
                  this.value++;
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;

  RoundIconButton({@required this.icon, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      child: Icon(
        this.icon,
        color: Colors.white,
      ),
      onPressed: this.onPressed,
    );
  }
}
