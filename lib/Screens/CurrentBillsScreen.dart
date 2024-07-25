import 'package:al_anna/Screens/BillDetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CurrentBillsScreen extends StatelessWidget {
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
              'الفواتير الحالية',
              textDirection: TextDirection.rtl,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
            ),
            backgroundColor: const Color(0xffE7A967),
            centerTitle: true,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  BillSection(title: 'عبدالله المري', bills: [
                    BillItem(
                        date: '22/03/2024',
                        amount: '550',
                        status: 'تحت الإجراء'),
                  ]),
                  SizedBox(height: 16),
                  BillSection(title: 'خالد المسلم', bills: [
                    BillItem(
                        date: '22/03/2024',
                        amount: '550',
                        status: 'تحت الإجراء'),
                  ]),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset('assets/images/Group 13.png'),
            ),
          ],
        ),
      ),
    );
  }
}

class BillSection extends StatelessWidget {
  final String title;
  final List<BillItem> bills;

  BillSection({required this.title, required this.bills});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 8),
        Column(
          children: bills,
        ),
      ],
    );
  }
}

class BillItem extends StatelessWidget {
  final String date;
  final String amount;
  final String status;

  BillItem({required this.date, required this.amount, required this.status});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
        side: BorderSide(color: Colors.grey),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Row(children: [
                  Text(
                    '$amount',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffE7A967)),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'ريال قطري',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                        color: Color(0xff605757)),
                  )
                ]),
                Spacer(),
                Text(date),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return BillDetails();
                      },
                    ));
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    primary: Color(0xffE7A967),
                  ),
                  child: Text('رؤية التفاصيل'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    status,
                    style: TextStyle(
                        color: Color(0xffFDC840),
                        fontSize: 12,
                        fontWeight: FontWeight.w800),
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
