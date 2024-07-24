import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PreviousVotes extends StatelessWidget {
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
              'التصويتات السابقة',
              textDirection: TextDirection.rtl,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
            ),
            backgroundColor: const Color(0xffE7A967),
            centerTitle: true,
          ),
        ),
      ),
      body: Column(children: [
        SizedBox(
          height: 330,
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return PreviousVotesContainer();
            },
          ),
        ),
        SizedBox(
          height: 70,
        ),
        Image.asset(
          'assets/images/Group 13.png',
          height: 145,
          width: 145,
        ),
      ]),
    );
  }
}

class PreviousVotesContainer extends StatelessWidget {
  const PreviousVotesContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 19, right: 19, top: 15, bottom: 5),
      child: Container(
        height: 90,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1, color: Color(0xff605757)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'عرض النتيجة',
                  style: TextStyle(
                      color: Color(0xffE7A967),
                      decoration: TextDecoration.underline),
                ),
              ),
              Row(children: [
                SvgPicture.asset('assets/images/mdi_vote-outline.svg'),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'متى نتجمع بالعنّة في أي ساعة؟',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                      color: Color(0xff605757)),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
