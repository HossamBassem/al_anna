import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Temp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SizedBox(
        width: 120,
        height: 120,
        child: CircularPercentIndicator(
          animateFromLastPercent: true,
          radius: 60.0,
          lineWidth: 15.0,
          percent: 0.7,
          center: new Text("70%"),
          progressColor: Color(0xffFDA244),
        ),
      ),
    );
  }
}
