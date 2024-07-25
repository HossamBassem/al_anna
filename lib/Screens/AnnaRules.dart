import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AnnaRules extends StatelessWidget {
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
              'لوائح العنة',
              textDirection: TextDirection.rtl,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
            ),
            backgroundColor: const Color(0xffE7A967),
            centerTitle: true,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'لوائح العنة',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                  color: Color(0xff605757)),
            ),
            SizedBox(
              height: 200,
            ),
            Image.asset(
              'assets/images/Group 13.png', // Replace with your fire icon URL or use AssetImage for local assets
              height: 145,
              width: 145,
            ),
          ],
        ),
      ),
    );
  }
}
