import 'package:al_anna/CustomizedTextField.dart';
import 'package:al_anna/MyElevatedButton.dart';
import 'package:al_anna/Screens/CustomRequestSentDialog.dart';
import 'package:al_anna/textField/passwordTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class JoinAnna extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SizedBox(
        height: 800,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Image.asset(
              'assets/images/qatar_tent.png', // Replace with your image URL or use AssetImage for local assets
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Positioned(
              top: 240,
              width: 410,
              height: 605,
              child: Container(
                height: 441,
                width: 380,
                alignment: Alignment.center,
                decoration: const ShapeDecoration(
                  color: Color(0xFFFAFAFA),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      SizedBox(height: 45.5),
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
                                  child: Text('كود العنة',
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
                                  indent:
                                      8, // Customizable indentation from the top
                                  endIndent:
                                      8, // Customizable indentation from the bottom
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 14),
                                  child: Expanded(
                                    child: SizedBox(
                                      width: 200,
                                      child: TextField(
                                          cursorHeight: 20,
                                          decoration: InputDecoration(
                                              hintText: 'ادخل كود العنة',
                                              hintStyle: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w800,
                                                  color: Color(0xffAFADAD)),
                                              border: InputBorder.none)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      PasswordTextField(
                          hintText: "كلمة المرور للإنضمام للعنة",
                          enabled: true),
                      SizedBox(height: 16),
                      const Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'أو انضم بإستخدام لينك العنة',
                          style: TextStyle(
                              color: Color(0xff815E3A),
                              fontSize: 12,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      CustomizedTextField(
                          hintText: 'ادخل الينك هنا', rightText: 'لينك العنة'),
                      const SizedBox(height: 60),
                      MyElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) => CustomDialog(
                              avatarBackgroundColor: Color(0xff3AD29F),
                              avatarImage:
                                  SvgPicture.asset('assets/images/Group.svg'),
                              buttonColor: Color(0xff3AD29F),
                              title: "تم إرسال طلبك",
                              description: "سيتم لاحقا ارسال إشعار بالموافقة",
                              buttonText: 'تم',
                            ),
                          );
                        },
                        height: 50.0,
                        width: 246.0,
                        /* gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xFFE7A967), Color(0xFF815E3A)],
                        ),*/
                        child: Text(
                          'طلب انضمام',
                          style: TextStyle(fontFamily: 'Cairo', fontSize: 14),
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      const SizedBox(height: 60),
                      Image.asset(
                        'assets/images/Group 13.png', // Replace with your fire icon URL or use AssetImage for local assets
                        height: 145,
                        width: 145,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
