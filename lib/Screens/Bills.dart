import 'package:al_anna/CustomContainer.dart';
import 'package:al_anna/Screens/AddNewBill.dart';
import 'package:al_anna/Screens/CurrentBillsScreen.dart';
import 'package:al_anna/Screens/PreviousBill.dart';
import 'package:al_anna/Screens/UserCurrentVotes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Bills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: const Text(
              'فواتير',
              textDirection: TextDirection.rtl,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
            ),
            backgroundColor: const Color(0xffE7A967),
            centerTitle: true,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 26,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return AddNewBill();
                },
              ));
            },
            child: CustomContainer(
                containerText: 'تسجيل فاتورة جديدة',
                icon: SvgPicture.asset(
                    'assets/images/solar_bill-list-linear.svg')),
          ),
          SizedBox(
            height: 16,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return CurrentBillsScreen();
                },
              ));
            },
            child: CustomContainer(
                containerText: 'الفواتير الحالية',
                icon: SvgPicture.asset(
                    'assets/images/solar_bill-list-linear.svg')),
          ),
          SizedBox(
            height: 16,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return PreviousBills();
                },
              ));
            },
            child: CustomContainer(
                containerText: 'الفواتير السابقة',
                icon: SvgPicture.asset(
                    'assets/images/solar_bill-list-linear.svg')),
          ),
          SizedBox(
            height: 155,
          ),
          Image.asset(
            'assets/images/Group 13.png', // Replace with your fire icon URL or use AssetImage for local assets
            height: 145,
            width: 145,
          ),
        ],
      ),
    );
    ;
  }
}
