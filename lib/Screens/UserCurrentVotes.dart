import 'package:al_anna/AdminScreens/AdminVotingContainer.dart';
import 'package:al_anna/UserVotingContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserCurrentVotes extends StatelessWidget {
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
              onPressed: () {},
            ),
            title: const Text(
              'التصويتات الحالية',
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
            height: 27,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                'سؤال التصويت',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w800,
                    color: Color(0xff605757)),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          UserVotingContainer(),
        ],
      ),
    );
  }
}
