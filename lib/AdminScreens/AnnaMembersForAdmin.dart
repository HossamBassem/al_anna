import 'package:al_anna/Screens/CustomRequestSentDialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AnnaMembersForAdmin extends StatefulWidget {
  @override
  _AnnaMembersForAdminState createState() => _AnnaMembersForAdminState();
}

class _AnnaMembersForAdminState extends State<AnnaMembersForAdmin> {
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

  int _selectedIndex = 0;

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
            child: Directionality(
              textDirection: TextDirection.ltr,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ChoiceChip(
                    label: Directionality(
                      textDirection: TextDirection.rtl,
                      child: Row(
                        children: [
                          Text('طلبات الإنضمام'),
                          SizedBox(width: 5),
                          CircleAvatar(
                            backgroundColor: Colors.red,
                            radius: 10,
                            child: Text(
                              '6',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    selected: _selectedIndex == 1,
                    onSelected: (selected) {
                      setState(() {
                        _selectedIndex = 1;
                      });
                    },
                    backgroundColor: Colors.white,
                    selectedColor: Color(0xffE7A967),
                  ),
                  SizedBox(width: 10),
                  ChoiceChip(
                    label: Text('أعضاء العنة'),
                    selected: _selectedIndex == 0,
                    onSelected: (selected) {
                      setState(() {
                        _selectedIndex = 0;
                      });
                    },
                    backgroundColor: Colors.white,
                    selectedColor: Color(0xffE7A967),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: _selectedIndex == 0
                ? ListView.builder(
                    itemCount: members.length,
                    itemBuilder: (context, index) {
                      return AnnaMemberContainer(
                        name: members[index]['name']!,
                        role: members[index]['role']!,
                        image: members[index]['image']!,
                      );
                    },
                  )
                : ListView.builder(
                    itemCount: members.length,
                    itemBuilder: (context, index) {
                      return AnnaMemberRequestContainer(
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
            SizedBox(width: 10),
            SvgPicture.asset(
              'assets/images/Vector.svg', // Replace with your role icon
              height: 24,
              width: 24,
            ),
          ],
        ),
      ),
    );
  }
}

class AnnaMemberRequestContainer extends StatelessWidget {
  final String name;
  final String role;
  final String image;

  const AnnaMemberRequestContainer({
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
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle accept action
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => CustomDialog(
                        avatarBackgroundColor: Color(0xff3AD29F),
                        avatarImage:
                            SvgPicture.asset('assets/images/Group.svg'),
                        buttonColor: Color(0xff3AD29F),
                        title: "تم الموافقة ",
                        description: "سيتم ارسال إشعار بالموافقة للعضو",
                        buttonText: 'تم',
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff3AD29F),
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    minimumSize: Size(60, 30),
                  ),
                  child: Text(
                    'موافقة',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                SizedBox(width: 5),
                OutlinedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => CustomDialog(
                        avatarBackgroundColor: Colors.redAccent,
                        avatarImage: SvgPicture.asset(
                          'assets/images/rejection icon (2).svg',
                        ),
                        buttonColor: Colors.redAccent,
                        title: "تم الرفض ",
                        description: "تم رفض طلب الإنضمام",
                        buttonText: 'تم',
                      ),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.red),
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    minimumSize: Size(60, 30),
                  ),
                  child: Text(
                    'رفض',
                    style: TextStyle(fontSize: 12, color: Colors.red),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
