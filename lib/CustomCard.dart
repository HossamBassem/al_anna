import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CustomCard extends StatelessWidget {
  const CustomCard(
      {super.key,
      required this.circlerPercentColor,
      required this.totalPaid,
      required this.paid,
      required this.percent,
      required this.ovalPaid,
      required this.remaining,
      required this.remainingPercent});
  final Color circlerPercentColor;
  final String totalPaid;
  final String paid;
  final String percent;
  final SvgPicture ovalPaid;
  final String remaining;

  final String remainingPercent;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1, color: Colors.black),
        ),
        child: Card(
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 17),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '$totalPaid' + 'ر.ق',
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 18,
                        ),
                      ),
                      Row(
                        children: [
                          ovalPaid,
                          SizedBox(width: 6),
                          Text('$paid' + '   ' + '$percent' + '   المدوفوع   '),
                        ],
                      ),
                      Row(
                        children: [
                          SvgPicture.asset('assets/images/Oval (1).svg'),
                          SizedBox(width: 6),
                          Text('$remaining' +
                              '   ' +
                              '$remainingPercent' +
                              '   المدوفوع   '),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 120,
                  width: 120,
                  child: CircularPercentIndicator(
                    animateFromLastPercent: true,
                    radius: 60.0,
                    lineWidth: 15.0,
                    percent: 0.7,
                    center: Text("70%"),
                    progressColor: circlerPercentColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
