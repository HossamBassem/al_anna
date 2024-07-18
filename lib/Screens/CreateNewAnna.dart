import 'package:al_anna/CustomizedDropDownForm.dart';
import 'package:al_anna/CustomizedTextField.dart';
import 'package:al_anna/MyElevatedButton.dart';
import 'package:al_anna/Screens/HomeScreen.dart';
import 'package:al_anna/textField/passwordTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CreateNewAnna extends StatefulWidget {
  @override
  _CreateNewAnnaState createState() => _CreateNewAnnaState();
}

class _CreateNewAnnaState extends State<CreateNewAnna> {
  final _formKey = GlobalKey<FormState>();

  String? _selectedLocation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
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
                textDirection: TextDirection.rtl,
                'إنشاء  عنة جديدة +',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
              ),
              backgroundColor: const Color(0xffE7A967),
              centerTitle: true,
            ),
          ),
          preferredSize: const Size.fromHeight(62)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 25,
                ),
                SizedBox(
                  height: 41,
                  child: Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black,
                        ),
                      ),
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 14),
                            child: Text('كود العنة',
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
                            child: Text('4567'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                const CustomizedTextField(
                  rightText: 'اسم العنة ',
                  hintText: 'ادخل اسم العنة',
                ),
                const SizedBox(height: 16.0),
                const PasswordTextField(hintText: 'كلمة المرور للإنضمام للعنة'),
                const SizedBox(height: 16.0),
                const PasswordTextField(hintText: 'إعادة إدخال كلمة المرور'),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text('صورة العنة',
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
                          'assets/images/icon-park_upload-picture.svg'),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                CustomizedDropDownForm(),
                const SizedBox(height: 16.0),
                const CustomizedTextField(
                  rightText: 'عدد الاعضاء',
                  hintText: '        15',
                ),
                const SizedBox(height: 16.0),
                SizedBox(
                  height: 41,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(right: 14),
                          child: Text('القطية السنوية ',
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
                          child: SizedBox(
                            width: 150,
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 0),
                              child: TextField(
                                  cursorHeight: 20,
                                  decoration: InputDecoration(
                                      hintText: '100,000',
                                      hintStyle: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w800,
                                          color: Color(0xff605757)),
                                      border: InputBorder.none)),
                            ),
                          ),
                        ),
                        Text(
                          'لكل عضو',
                          style: TextStyle(
                              color: Color(0xffAFADAD),
                              fontSize: 14,
                              fontWeight: FontWeight.w800),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                SizedBox(
                  height: 41,
                  child: Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black,
                        ),
                      ),
                      child: Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(right: 14),
                            child: Text('القطية الشهرية',
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
                            child: SizedBox(
                              width: 150,
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 0),
                                child: TextField(
                                    cursorHeight: 20,
                                    decoration: InputDecoration(
                                        hintText: '10,000',
                                        hintStyle: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w800,
                                            color: Color(0xff605757)),
                                        border: InputBorder.none)),
                              ),
                            ),
                          ),
                          Text(
                            'لكل عضو',
                            style: TextStyle(
                                color: Color(0xffAFADAD),
                                fontSize: 14,
                                fontWeight: FontWeight.w800),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 32.0),
                Center(
                  child: MyElevatedButton(
                    onPressed: () {
                      // Action for logging in
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const HomeScreen();
                        },
                      ));
                    },
                    height: 53.4,
                    width: 300,
                    child: const Text(
                      'حفظ',
                      style: TextStyle(fontSize: 14),
                    ),
                    borderRadius: BorderRadius.circular(30),
                    /* gradient: LinearGradient(
                      colors: [
                        Color(0xFFE7A967),
                        Color(0xFF815E3A),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),*/
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
