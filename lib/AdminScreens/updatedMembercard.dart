import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/percent_indicator.dart';

class UpdatedMemberCard extends StatelessWidget {
  final Color linearPercentColor;
  final String paid;
  final String remaining;
  final SvgPicture ovalPaid;

  const UpdatedMemberCard({
    super.key,
    required this.linearPercentColor,
    required this.paid,
    required this.remaining,
    required this.ovalPaid,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        width: double.infinity, // Ensures the container takes up full width
        height: 110,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1, color: Colors.black),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min, // Minimize the size of Column
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment:
                    MainAxisAlignment.start, // Space between elements
                children: [
                  CircleAvatar(
                    foregroundColor: Colors.transparent,
                    backgroundColor: Colors.transparent,
                    radius: 40,
                    child: Image.asset('assets/images/Ellipse 5 (1).jpg'),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    // Use Expanded here to fill remaining space
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start, // Align to start
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Row(
                            children: [
                              ovalPaid,
                              const SizedBox(width: 6),
                              Text(
                                '$paid المدفوع',
                                style: const TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 3),
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Row(
                            children: [
                              SvgPicture.asset('assets/images/Oval (1).svg'),
                              const SizedBox(width: 6),
                              Text(
                                '$remaining لم يدفع بعد',
                                style: const TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
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
                  GestureDetector(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(
                          bottom: 15.0,
                        ),
                        child: SvgPicture.asset('assets/images/Vector.svg'),
                      )),
                ],
              ),
              const Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  'عبدالله المري',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff605757),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
