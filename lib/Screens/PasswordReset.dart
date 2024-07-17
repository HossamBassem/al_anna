import 'package:al_anna/MyElevatedButton.dart';
import 'package:al_anna/textField/phoneFormat.dart';
import 'package:flutter/material.dart';

class PasswordReset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 74),
            SizedBox(
              height: 79,
              width: 79,
              child: CircleAvatar(
                backgroundColor: Color(0xFFE7A967),
                child: Image.asset('assets/images/Asset 1@4x 2.png'),
              ),
            ),
            SizedBox(
              height: 37,
            ),
            Text(
              'إعادة تعيين كلمة المرور',
              style: TextStyle(fontSize: 16, color: Color(0xff605757)),
            ),
            SizedBox(
              height: 54.5,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: CustomPhoneTextField(),
            ),
            SizedBox(
              height: 61.5,
            ),
            MyElevatedButton(
              onPressed: () {
                // Action for logging in
              },
              height: 53.4,
              width: 300,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFFE7A967), Color(0xFF815E3A)],
              ),
              child: Text(
                'إرسال الكود',
                style: TextStyle(fontFamily: 'Cairo', fontSize: 14),
              ),
              borderRadius: BorderRadius.circular(30),
            ),
            SizedBox(
              height: 76,
            ),
            Image.asset(
              'assets/images/Group 13.png', // Replace with your fire icon URL or use AssetImage for local assets
              height: 145,
              width: 145,
            ),
          ],
        ),
      ),
    );
  }
}
