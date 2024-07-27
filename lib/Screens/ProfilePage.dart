import 'dart:io';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  File? _selectedImage;

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
                  width: MediaQuery.of(context).size.width,
                  height: 605,
                  child: Container(
                    height: 441,
                    width: double.infinity,
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
                            SizedBox(
                              height: 41,
                              child: SizedBox(
                                height: 41,
                                child: Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                      border: Border.all(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(right: 14),
                                            child: SvgPicture.asset(
                                                color: Colors.black,
                                                'assets/images/iconamoon_profile-light (1).svg')),
                                        SizedBox(width: 30),
                                        VerticalDivider(
                                          color: Colors
                                              .black, // Customizable color
                                          width: 1, // Customizable width
                                          thickness:
                                              1, // Customizable thickness
                                          indent:
                                              8, // Customizable indentation from the top
                                          endIndent:
                                              8, // Customizable indentation from the bottom
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(right: 14),
                                          child: Text('عبدالله المري',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w800,
                                                  color: Color(0xff605757))),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 16),
                            Container(
                              height: 41,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.grey, width: 1.0),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(
                                    child: CountryCodePicker(
                                      enabled: false,
                                      onChanged: (countryCode) {
                                        // Handle country code change if needed
                                      },
                                      padding: EdgeInsets.all(0),
                                      flagWidth: 24,
                                      hideMainText: true,
                                      initialSelection: 'QA',
                                      favorite: ['+974', 'QA'],
                                      showCountryOnly: false,
                                      showDropDownButton: false,
                                      showOnlyCountryWhenClosed: true,
                                      alignLeft: false,
                                    ),
                                  ),
                                  VerticalDivider(
                                    color: Colors.black, // Customizable color
                                    width: 1, // Customizable width
                                    thickness: 1, // Customizable thickness
                                    indent:
                                        8, // Customizable indentation from the top
                                    endIndent:
                                        8, // Customizable indentation from the bottom
                                  ),
                                  Expanded(
                                      child: Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Text('12345678'),
                                  )),
                                ],
                              ),
                            ),
                            SizedBox(height: 16),
                            SizedBox(
                              height: 41,
                              child: SizedBox(
                                height: 41,
                                child: Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                      border: Border.all(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(right: 14),
                                            child: SvgPicture.asset(
                                                color: Colors.black,
                                                'assets/images/email icon.svg')),
                                        SizedBox(width: 30),
                                        VerticalDivider(
                                          color: Colors
                                              .black, // Customizable color
                                          width: 1, // Customizable width
                                          thickness:
                                              1, // Customizable thickness
                                          indent:
                                              8, // Customizable indentation from the top
                                          endIndent:
                                              8, // Customizable indentation from the bottom
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(right: 14),
                                          child: Text('kalied.sle345@gmail.com',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w800,
                                                  color: Color(0xff605757))),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 16),
                            PasswordTextField(
                                hintText: " 3546548", enabled: true),
                            SizedBox(height: 20),
                            SizedBox(
                              height: 53.4,
                              width: 250,
                              child: MyElevatedButton(
                                onPressed: () {
                                  // Action for logging in
                                },
                                height: 53.4,
                                width: 250,
                                child: Text(
                                  'تعديل',
                                  style: TextStyle(fontSize: 14),
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
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
                    //  onTap: _pickImage, // Call the image picker method
                    child: CircleAvatarB(
                      image: AssetImage('assets/images/Ellipse 5.png'),
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

class CustomTextView extends StatelessWidget {
  final String rightText;
  final String leftText;

  const CustomTextView({
    super.key,
    required this.rightText,
    required this.leftText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 41,
      child: Expanded(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            border: Border.all(
              color: Colors.grey,
            ),
          ),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 14),
                child: Text(rightText,
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
                endIndent: 8, // Customizable indentation from the bottom
              ),
              Padding(
                padding: EdgeInsets.only(right: 14),
                child: Text('$leftText',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                        color: Color(0xff605757))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
