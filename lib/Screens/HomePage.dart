import 'package:al_anna/CircleAvatar.dart';
import 'package:al_anna/CustomContainer.dart';
import 'package:al_anna/Screens/AnnaMembers.dart';
import 'package:al_anna/Screens/AnnaRules.dart';
import 'package:al_anna/Screens/AnnualQatia.dart';
import 'package:al_anna/Screens/Bills.dart';
import 'package:al_anna/Screens/CreateYourApp.dart';
import 'package:al_anna/Screens/InviteFriend.dart';
import 'package:al_anna/Screens/MonthlyQatia.dart';
import 'package:al_anna/Screens/ProfilePage.dart';
import 'package:al_anna/Screens/VoteForUsers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(62),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: AppBar(
            automaticallyImplyLeading: true,
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: SvgPicture.asset(
                      'assets/images/system-uicons_side-menu.svg'),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                );
              },
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 6),
              child: Image.asset(
                'assets/images/Asset 1@4x 2.png',
                alignment: Alignment.center,
                height: 50,
                width: 50,
              ),
            ),
            backgroundColor: const Color(0xffE7A967),
            centerTitle: true,
          ),
        ),
      ),
      drawer: Drawer(
        width: 250,
        backgroundColor: Color(0xffE7A967),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 130,
              ),
              SizedBox(
                height: 85,
                width: 85,
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  foregroundColor: Colors.transparent,
                  child: Image.asset('assets/images/Ellipse 5.png',
                      height: 85, width: 85, fit: BoxFit.cover),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'أهلا،',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 4),
              Text(
                'عبد الله المري',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return ProfilePage();
                    },
                  ));
                },
                child: Row(
                  children: [
                    SvgPicture.asset(
                        'assets/images/iconamoon_profile-light (1).svg'),
                    SizedBox(width: 4),
                    Text(
                      'الصفحة الشخصية',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return InviteFriend();
                    },
                  ));
                },
                child: Row(
                  children: [
                    SvgPicture.asset('assets/images/mdi_invite.svg'),
                    SizedBox(width: 4),
                    Text(
                      'دعوة صديق',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return CreateAppPage();
                    },
                  ));
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                          colors: [
                            Color(0xff3AD29F),
                            Color(0xff1E6C52),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter)),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                          'assets/images/uit_create-dashboard.svg'),
                      SizedBox(width: 4),
                      Text(
                        'إنشاء تطبيقك الخاص',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 2,
                color: Color(0xffFAFAFA),
              ),
              SizedBox(height: 44),
              Row(
                children: [
                  SvgPicture.asset('assets/images/Sign Out.svg'),
                  SizedBox(width: 4),
                  Text(
                    'تسجيل الخروج',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w800),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Image.asset('assets/images/Asset 1@4x 2.png')
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageSlideshow(
              autoPlayInterval: 3000,
              height: 130,
              width: double.infinity,
              isLoop: true,
              children: [
                Image.asset(
                  'assets/images/Rectangle 46.png',
                  height: 130,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/images/Rectangle 46.png',
                  height: 130,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/images/Rectangle 46.png',
                  height: 130,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 19),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'المبلغ الفائض',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    color: Color(0xff605757),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            TotalCachCard(
              circlerPercentColor: Color(0xff3AD29F),
              paid: '100,000',
              ovalPaid: SvgPicture.asset('assets/images/Oval (3).svg'),
              percent: '70%',
              expenses: '26,000',
              totalPaid: '126,000',
              remainingPercent: '30%',
            ),
            SizedBox(height: 33),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return AnnualQatia();
                  },
                ));
              },
              child: CustomContainer(
                  containerText: 'القطية السنوية',
                  icon: SvgPicture.asset(
                      'assets/images/solar_bill-list-linear.svg')),
            ),
            SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return MonthlyQatia();
                  },
                ));
              },
              child: CustomContainer(
                  containerText: 'القطية الشهرية',
                  icon: SvgPicture.asset(
                      'assets/images/solar_bill-list-linear.svg')),
            ),
            SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Bills();
                  },
                ));
              },
              child: CustomContainer(
                  containerText: 'فواتير',
                  icon: SvgPicture.asset(
                      'assets/images/solar_bill-list-linear.svg')),
            ),
            SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return VoteForUsers();
                  },
                ));
              },
              child: CustomContainer(
                  containerText: 'تصويت',
                  icon: SvgPicture.asset('assets/images/mdi_vote-outline.svg')),
            ),
            SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return AnnaMembers();
                  },
                ));
              },
              child: CustomContainer(
                  containerText: 'أعضاء العنة',
                  icon: SvgPicture.asset('assets/images/arcticons_id-me.svg')),
            ),
            SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return AnnaRules();
                  },
                ));
              },
              child: CustomContainer(
                  containerText: 'لوائح العنة',
                  icon: SvgPicture.asset(
                      'assets/images/solar_bill-list-linear.svg')),
            ),
          ],
        ),
      ),
    );
  }
}

class TotalCachCard extends StatelessWidget {
  const TotalCachCard(
      {super.key,
      required this.circlerPercentColor,
      required this.totalPaid,
      required this.paid,
      required this.percent,
      required this.ovalPaid,
      required this.expenses,
      required this.remainingPercent});
  final Color circlerPercentColor;
  final String totalPaid;
  final String paid;
  final String percent;
  final SvgPicture ovalPaid;
  final String expenses;

  final String remainingPercent;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1, color: Color(0xff605757)),
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
                      SizedBox(height: 16),
                      Row(
                        children: [
                          ovalPaid,
                          SizedBox(width: 6),
                          Text('$paid' + '   ' + 'المبلغ الفائض(الرصيد الحالي)',
                              style: TextStyle(fontSize: 12)),
                        ],
                      ),
                      Row(
                        children: [
                          SvgPicture.asset('assets/images/Oval (1).svg'),
                          SizedBox(width: 6),
                          Text('$expenses' + '   ' + 'مصروفات',
                              style: TextStyle(fontSize: 12)),
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
