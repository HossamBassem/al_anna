import 'package:al_anna/AdminScreens/updatedMembercard.dart';
import 'package:al_anna/CustomCard.dart';
import 'package:al_anna/MemberCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AccMonthlyQatia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(62),
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: AppBar(
            automaticallyImplyLeading: true,
            leading: IconButton(
              icon: SvgPicture.asset(
                  'assets/images/fluent-mdl2_navigate-back-mirrored.svg'),
              onPressed: () {},
            ),
            title: const Text(
              'القطية الشهرية',
              textDirection: TextDirection.rtl,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
            ),
            backgroundColor: const Color(0xffE7A967),
            centerTitle: true,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Row(
            children: [
              Text(
                'القطية الشهرية',
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                '(لجميع الاعضاء)',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                  color: Color(0xffAFADAD),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 13,
          ),
          CustomCard(
              circlerPercentColor: Color(0xff04BFDA),
              totalPaid: '15,000',
              paid: '10,000',
              percent: '70%',
              ovalPaid: SvgPicture.asset('assets/images/Oval (2).svg'),
              remaining: '5,000',
              remainingPercent: '30%'),
          SizedBox(
            height: 27,
          ),
          Row(
            children: [
              Text(
                'القطية الشهرية',
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                '1000',
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                '(لكل عضو)',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                  color: Color(0xffAFADAD),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 13,
          ),
          ...List.generate(
              10,
              (index) => UpdatedMemberCard(
                    linearPercentColor: Color(0xff04BFDA),
                    paid: '700',
                    remaining: '300',
                    ovalPaid: SvgPicture.asset('assets/images/Oval (2).svg'),
                  )),
        ],
      ),
    );
  }
}
