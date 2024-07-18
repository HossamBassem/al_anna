import 'package:al_anna/MyElevatedButton.dart';
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
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 117),
                SvgPicture.asset('assets/images/OTP 1.svg'),
                SizedBox(height: 33),
                Text(
                  'التحقق من رمز OTP',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff605757),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      ' ادخل الرمز المرسل الى رقم ',
                      style: TextStyle(
                        color: Color(0xff605757),
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      '32168463213',
                      style: TextStyle(
                        color: Color(0xffE7A967),
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(4, (index) {
                      return Padding(
                        padding: const EdgeInsets.all(11),
                        child: SizedBox(
                          width: 60,
                          height: 60,
                          child: PinCodeTextField(
                            enablePinAutofill: true,
                            keyboardType: TextInputType.number,
                            appContext: context,
                            length: 1,
                            onChanged: (value) {},
                            pinTheme: PinTheme(
                              activeColor: Color(0xffE7A967),
                              selectedColor: Color(0xffE7A967),
                              inactiveColor: Color(0xffE7A967),
                              shape: PinCodeFieldShape.box,
                              borderRadius: BorderRadius.circular(15),
                              fieldHeight: 60,
                              fieldWidth: 60,
                              activeFillColor: Colors.white,
                              inactiveFillColor: Colors.white,
                              selectedFillColor: Colors.white,
                            ),
                            autoDisposeControllers: false,
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                SizedBox(height: 30),
                MyElevatedButton(
                  onPressed: () {},
                  height: 53.4,
                  width: 300,
                  borderRadius: BorderRadius.circular(25),
                  /*  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFFE7A967), Color(0xFF815E3A)],
                  ),*/
                  child: Text(
                    'تأكيد',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                SizedBox(height: 30),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'إعادة إرسال الكود؟',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffE7A967),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                SizedBox(height: 18),
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
    );
  }
}
