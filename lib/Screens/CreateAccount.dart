import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

// Import other necessary files
import 'package:al_anna/CircleAvatar.dart';
import 'package:al_anna/MyElevatedButton.dart';
import 'package:al_anna/Screens/login.dart';
import 'package:al_anna/textField/EmailTextField.dart';
import 'package:al_anna/textField/NameTextField.dart';
import 'package:al_anna/textField/passwordTextField.dart';
import 'package:al_anna/textField/phoneFormat.dart';

class CreateAccount extends StatefulWidget {
  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  File? _selectedImage;

  // Method to pick an image from the gallery
  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _selectedImage = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(height: 900),
                Image.asset(
                  'assets/images/qatar_tent.png',
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
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            SizedBox(height: 61.5),
                            NameTextField(),
                            SizedBox(height: 16),
                            CustomPhoneTextField(),
                            SizedBox(height: 16),
                            EmailTextField(),
                            SizedBox(height: 16),
                            PasswordTextField(hintText: "كلمة المرور"),
                            SizedBox(height: 16),
                            PasswordTextField(hintText: "إعادة كلمة المرور"),
                            SizedBox(height: 20),
                            MyElevatedButton(
                              onPressed: () {
                                // Action for logging in
                              },
                              height: 53.4,
                              width: 300,
                              child: Text(
                                'تسجيل الدخول',
                                style: TextStyle(fontSize: 14),
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  ' لديك حساب؟ ',
                                  style: TextStyle(color: Color(0xffE7A967)),
                                ),
                                TextButton(
                                  onPressed: () {
                                    // Action for creating a new account
                                    Navigator.push(context, MaterialPageRoute(
                                      builder: (context) {
                                        return LoginScreen();
                                      },
                                    ));
                                  },
                                  child: Text(
                                    'تسجيل دخول',
                                    style: TextStyle(
                                        color: Colors.black,
                                        decoration: TextDecoration.underline),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 28),
                            Image.asset(
                              'assets/images/Group 13.png',
                              height: 145,
                              width: 145,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 285,
                  top: 178,
                  child: GestureDetector(
                    onTap: _pickImage, // Call the image picker method
                    child: CircleAvatarB(
                      image: _selectedImage != null
                          ? FileImage(
                              _selectedImage!) // Display the selected image
                          : null,
                    ),
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
