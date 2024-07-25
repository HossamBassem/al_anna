import 'package:al_anna/MyElevatedButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BillDetails extends StatefulWidget {
  @override
  State<BillDetails> createState() => _BillDetailsState();
}

class _BillDetailsState extends State<BillDetails> {
  int? selectedOption = -1;
  String state = 'تمت الموافقة';

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
              'تفاصيل الفاتورة',
              textDirection: TextDirection.rtl,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
            ),
            backgroundColor: const Color(0xffE7A967),
            centerTitle: true,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: [
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 41,
              child: Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey,
                    ),
                  ),
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(right: 14),
                        child: Text('المبلغ',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w800,
                                color: Color(0xff605757))),
                      ),
                      SizedBox(width: 17),
                      VerticalDivider(
                        color: Colors.black, // Customizable color
                        width: 1, // Customizable width
                        thickness: 1, // Customizable thickness
                        indent: 8, // Customizable indentation from the top
                        endIndent:
                            8, // Customizable indentation from the bottom
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 14),
                        child: Text('4567',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w800,
                                color: Color(0xff605757))),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 80,
              child: Expanded(
                child: Container(
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey,
                    ),
                  ),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 14),
                        child: Text('المشتريات',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w800,
                                color: Color(0xff605757))),
                      ),
                      const SizedBox(width: 17),
                      const VerticalDivider(
                        color: Colors.black, // Customizable color
                        width: 1, // Customizable width
                        thickness: 1, // Customizable thickness
                        indent: 8, // Customizable indentation from the top
                        endIndent:
                            8, // Customizable indentation from the bottom
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 14),
                        child: Text(
                          '  مساند , فحم مشروبات  ',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w800,
                              color: Color(0xff605757)),
                          softWrap: true,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text('صورة الفاتورة ',
                    style: TextStyle(
                        color: Color(0xff605757),
                        fontSize: 14,
                        fontWeight: FontWeight.w800)),
                const SizedBox(
                  width: 35,
                ),
                Container(
                    height: 113,
                    width: 240,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(20)),
                    alignment: Alignment.center,
                    child: SvgPicture.asset(
                      'assets/images/icon-park_upload-picture.svg',
                      height: 50,
                      width: 50,
                    )),
              ],
            ),
            SizedBox(
              height: 90,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text('تغيير حالة الفاتورة',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                      color: Color(0xff605757))),
            ),
            SizedBox(
              height: 16,
            ),
            Align(
                alignment: Alignment.centerRight,
                child:
                    Text('$state', style: TextStyle(color: Color(0xff1FCB30)))),
            SizedBox(
              height: 45,
            ),
            MyElevatedButton(
              onPressed: () {
                // Action for logging in
              },
              height: 53.4,
              width: 300,
              /* gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Color(0xFFE7A967), Color(0xFF815E3A)],
                              ),*/
              child: Text(
                'حفظ',
                style: TextStyle(fontFamily: 'Cairo', fontSize: 14),
              ),
              borderRadius: BorderRadius.circular(30),
            ),
            SizedBox(height: 33),
            Image.asset(
              'assets/images/Group 13.png', // Replace with your fire icon URL or use AssetImage for local assets
              height: 145,
              width: 145,
            ),
          ]),
        ),
      ),
    );
  }
}
