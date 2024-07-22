import 'dart:math';

import 'package:al_anna/MyElevatedButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddNewVote extends StatefulWidget {
  const AddNewVote({
    super.key,
  });

  @override
  State<AddNewVote> createState() => _AddNewVoteState();
}

class _AddNewVoteState extends State<AddNewVote> {
  int? selectedOption = -1;
  @override
  Widget build(BuildContext context) {
    //  int? selectedOption = -1;

    // TODO: implement build
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(62),
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
              'إضافة تصويت جديد',
              textDirection: TextDirection.rtl,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
            ),
            backgroundColor: const Color(0xffE7A967),
            centerTitle: true,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text('أضف سؤال',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                        color: Color(0xff605757))),
              ),
              SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 50,
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintStyle: TextStyle(
                          color: Color(0xffAFADAD),
                          fontSize: 14,
                          fontWeight: FontWeight.w800),
                      hintText: 'اضف السؤال هنا',
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text('اقتراحات التصويت',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                        color: Color(0xff605757))),
              ),
              SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 50,
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintStyle: TextStyle(
                          color: Color(0xffAFADAD),
                          fontSize: 14,
                          fontWeight: FontWeight.w800),
                      hintText: 'اضف اقتراحا هنا ',
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 50,
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintStyle: TextStyle(
                          color: Color(0xffAFADAD),
                          fontSize: 14,
                          fontWeight: FontWeight.w800),
                      hintText: 'اضف اقتراحا هنا ',
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('السماح بإجابات متعددة'),
                      Switch(
                        onChanged: (value) {},
                        value: false,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text('نوع التصويت',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                        color: Color(0xff605757))),
              ),
              SizedBox(
                height: 16,
              ),
              /* 
              Row(
                children: [
                

                  Radio(
                    value: 1,
                    groupValue: 1,
                    onChanged: (value) {},
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    'سري للغاية',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                        color: Colors.red),
                  )
                ],
              ),
              SizedBox(
                height: 22,
              ),
              Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: CircleBorder(side: BorderSide()),
                        backgroundColor: Colors.grey,
                        disabledBackgroundColor: Colors.black,
                        foregroundColor: Colors.transparent),
                    onPressed: () {
                      setState(() {});
                    },
                    child: Container(
                      width: 16,
                      height: 16,
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    'متوسط السرية',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                        color: Color(0xffFDC840)),
                  ),
                ],
              ),
              SizedBox(
                height: 22,
              ),
              Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: CircleBorder(side: BorderSide()),
                        backgroundColor: Colors.grey,
                        disabledBackgroundColor: Colors.black,
                        foregroundColor: Colors.transparent),
                    onPressed: () {
                      setState(() {});
                    },
                    child: Container(
                      width: 16,
                      height: 16,
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    'علني',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                        color: Colors.green),
                  ),
                ],
              ), */
              RadioListTile<int>(
                title: Text('سري للغاية', style: TextStyle(color: Colors.red)),
                value: 0,
                groupValue: selectedOption,
                activeColor: Colors.red,
                onChanged: (value) {
                  setState(() {
                    selectedOption = value;
                    print(value);
                  });
                },
              ),
              RadioListTile(
                title: Text(
                  'متوسط السرية',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                      color: Color(0xffFDC840)),
                ),
                groupValue: selectedOption,
                value: 1,
                activeColor: Color(0xffFDC840),
                onChanged: (value) {
                  setState(() {
                    selectedOption = value;
                  });
                },
              ),
              RadioListTile(
                title: Text(
                  'علني',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                      color: Colors.green),
                ),
                groupValue: selectedOption,
                value: 2,
                activeColor: Colors.green,
                onChanged: (value) {
                  setState(() {
                    selectedOption = value;
                  });
                },
              ),
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
            ],
          ),
        ),
      ),
    );
  }
}
