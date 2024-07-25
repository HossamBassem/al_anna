import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AnnaMembers extends StatelessWidget {
  final List<Map<String, String>> members = [
    {
      "name": "عبد الله المري",
      "role": "محاسب",
      "image": "assets/images/Ellipse 5.png"
    },
    {
      "name": "باسم السليطي",
      "role": "أدمن",
      "image": "assets/images/Ellipse 5.png"
    },
    {
      "name": "خالد المسلم",
      "role": "جوكر",
      "image": "assets/images/Ellipse 5.png"
    },
    {
      "name": "خالد المسلم",
      "role": "عضو عادي",
      "image": "assets/images/Ellipse 5.png"
    },
  ];

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
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: const Text(
              'الأعضاء ',
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
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 19),
            child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'أعضاء العنة',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                      color: Color(0xff605757)),
                )),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: members.length,
              itemBuilder: (context, index) {
                return AnnaMemberContainer(
                  name: members[index]['name']!,
                  role: members[index]['role']!,
                  image: members[index]['image']!,
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset('assets/images/Group 13.png'),
          ),
        ],
      ),
    );
  }
}

class AnnaMemberContainer extends StatelessWidget {
  final String name;
  final String role;
  final String image;

  const AnnaMemberContainer({
    Key? key,
    required this.name,
    required this.role,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 5),
      child: Container(
        height: 66,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(image),
              radius: 30,
            ),
            SizedBox(width: 10),
            Text(
              name,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: Color(0xff605757),
              ),
            ),
            Spacer(),
            Text(
              role,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w800,
                color: Color(0xffAFADAD),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
