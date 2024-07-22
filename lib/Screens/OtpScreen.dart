import 'package:al_anna/MyElevatedButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpScreen extends StatefulWidget {
  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  TextEditingController _otpController = TextEditingController();

  @override
  void dispose() {
    _otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
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
                child: Directionality(
                  textDirection: TextDirection.ltr,
                  child: PinCodeTextField(
                    controller: _otpController,
                    enablePinAutofill: true,
                    keyboardType: TextInputType.number,
                    appContext: context,
                    length: 4, // Set the total length of the OTP
                    onChanged: (value) {},

                    pinTheme: PinTheme(
                      fieldOuterPadding: EdgeInsets.only(left: 15, right: 15),
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
                    onCompleted: (value) {
                      print("Completed: $value"); // Action after completion
                    },
                  ),
                ),
              ),
              SizedBox(height: 30),
              MyElevatedButton(
                onPressed: () {},
                height: 53.4,
                width: 300,
                borderRadius: BorderRadius.circular(25),
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
                'assets/images/Group 13.png',
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
