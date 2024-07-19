import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/percent_indicator.dart';

class MemberCard extends StatelessWidget {
  final Color linearPercentColor;
  final String paid;
  final String remaining;
  final SvgPicture ovalPaid;

  const MemberCard(
      {super.key,
      required this.linearPercentColor,
      required this.paid,
      required this.remaining,
      required this.ovalPaid});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1, color: Colors.black),
        ),
        child: Card(
          elevation: 0,
          child: Row(
            children: [
              Container(
                width: 92,
                height: 120,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      foregroundColor: Colors.transparent,
                      backgroundColor: Colors.transparent,
                      radius: 40,
                      child: Image.asset('assets/images/Ellipse 5 (1).jpg'),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'عبدالله المري',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff605757),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: ovalPaid,
                          ),
                          const SizedBox(width: 6),
                          Text(
                            '$paid' + 'المدفوع',
                            style: TextStyle(fontSize: 12),
                          ),
                          const SizedBox(width: 10),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child:
                                SvgPicture.asset('assets/images/Oval (1).svg'),
                          ),
                          const SizedBox(width: 6),
                          Text(
                            '$remaining ' + 'لم يدفع بعد',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      LinearPercentIndicator(
                        barRadius: const Radius.circular(20),
                        isRTL: true,
                        lineHeight: 14.0,
                        percent: 0.7,
                        backgroundColor: Color(0xffDADADA),
                        progressColor: linearPercentColor,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
