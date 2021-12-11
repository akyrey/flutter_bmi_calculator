import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class HeightScroll extends StatefulWidget {
  final ValueChanged<int> onValueChange;

  HeightScroll({this.onValueChange});

  @override
  _HeightScrollState createState() => _HeightScrollState();
}

class _HeightScrollState extends State<HeightScroll> {
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'HEIGHT',
          style: kLabelTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              height.toString(),
              style: kScrollerTextStyle,
            ),
            Text(
              'cm',
              style: kLabelTextStyle,
            ),
          ],
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
              activeTrackColor: Colors.white,
              inactiveTrackColor: kLabelTextColor,
              thumbColor: kBottomContainerColor,
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
              overlayColor: Color(0x29EB1555),
              overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0)),
          child: Slider(
              value: this.height.toDouble(),
              min: 120.0,
              max: 240.0,
              onChanged: (double value) {
                setState(() {
                  this.height = value.round();
                });
                widget.onValueChange(this.height);
              }),
        ),
      ],
    );
  }
}
