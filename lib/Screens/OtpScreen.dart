import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpScreen extends StatefulWidget {
  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 117),
            SvgPicture.asset('assets/images/OTP 1.svg'),
            SizedBox(
              height: 33,
            ),
            Text(
              'التحقق من رمز OTP',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff605757)),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  ' ادخل الرمز المرسل الى رقم',
                  style: TextStyle(
                      color: Color(0xff605757),
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                ),
                TextButton(
                  onPressed: () {
                    // Action for creating a new account
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return null!;
                      },
                    ));
                  },
                  child: Text(
                    '32168463213',
                    style: TextStyle(
                        color: Color(0xffE7A967),
                        fontSize: 14,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                PinCodeTextField(
                  appContext: context,
                  length: 4,
                  onChanged: (value) {},
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(5),
                    fieldHeight: 50,
                    fieldWidth: 40,
                    activeFillColor: Colors.white,
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
