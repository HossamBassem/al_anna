// Import MaterialApp
import 'package:al_anna/Screens/CreateAccount.dart';
import 'package:al_anna/Screens/PasswordReset.dart';
import 'package:flutter/material.dart';
import 'package:al_anna/MyElevatedButton.dart';
import 'package:al_anna/textField/passwordTextField.dart';
import 'package:al_anna/textField/phoneFormat.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(height: 45.5),
                        CustomPhoneTextField(),
                        SizedBox(height: 16),
                        PasswordTextField(hintText: "كلمة المرور"),
                        SizedBox(height: 16),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {
                              // Action for forgot password
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return PasswordReset();
                                },
                              ));
                            },
                            child: Text(
                              'نسيت كلمة المرور؟',
                              style: TextStyle(
                                  color: Colors.black,
                                  decoration: TextDecoration.underline),
                            ),
                            // Consider using TextButton.style for styling
                          ),
                        ),
                        SizedBox(height: 35),
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
                            'تسجيل الدخول',
                            style: TextStyle(fontFamily: 'Cairo', fontSize: 14),
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        SizedBox(height: 9),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'ليس لديك حساب؟ ',
                              style: TextStyle(color: Color(0xffE7A967)),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return CreateAccount();
                                  },
                                ));
                              },
                              child: Text(
                                'إنشاء حساب',
                                style: TextStyle(
                                    color: Colors.black,
                                    decoration: TextDecoration.underline),
                              ),
                            ),
                          ],
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
