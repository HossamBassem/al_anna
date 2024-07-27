import 'package:al_anna/CustomizedTextField.dart';
import 'package:al_anna/MyElevatedButton.dart';
import 'package:al_anna/textField/phoneFormat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CreateAppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(62),
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: AppBar(
            automaticallyImplyLeading: true,
            leading: IconButton(
              icon: SvgPicture.asset(
                  'assets/images/fluent-mdl2_navigate-back-mirrored.svg'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: const Text(
              'إنشاء تطبيقك الخاص',
              textDirection: TextDirection.rtl,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
            ),
            backgroundColor: const Color(0xffE7A967),
            centerTitle: true,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'بيانات عن التطبيق',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              CustomizedTextField(
                hintText: 'برنامج، ويب سايت، ....',
                rightText: 'نوع التطبيق',
              ),
              SizedBox(height: 16),
              CustomPhoneField(),
              SizedBox(height: 16),
              SizedBox(
                height: 80,
                child: CustomizedTextField(
                  hintText: 'اكتب هنا',
                  rightText: 'نبذة عن التطبيق',
                ),
              ),
              SizedBox(height: 16),
              CustomizedTextField(
                hintText: 'الوقت المحدد للاتصال',
                rightText: 'أوقات التواصل',
              ),
              SizedBox(height: 24),
              MyElevatedButton(
                onPressed: () {
                  // Action for logging in
                },
                height: 53.4,
                width: 250,
                child: Text(
                  'إرسال',
                  style: TextStyle(fontSize: 14),
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              SizedBox(height: 24),
              Center(
                child: Column(
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'أو عن طريق :',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' WhatsApp',
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                    IconButton(
                      icon: SvgPicture.asset(
                          'assets/images/fa6-brands_square-whatsapp.svg'),
                      iconSize: 50,
                      onPressed: () {
                        // Action for WhatsApp button
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),
              Center(
                child: Image.asset(
                  'assets/images/Group 13.png', // Replace with your fire icon URL or use AssetImage for local assets
                  height: 145,
                  width: 145,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String label;
  final String hintText;
  final bool isRequired;
  final int maxLines;

  CustomTextField(
      {required this.label,
      required this.hintText,
      this.isRequired = false,
      this.maxLines = 1});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              label,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            if (isRequired)
              Text(
                ' *',
                style: TextStyle(color: Colors.red, fontSize: 14),
              ),
          ],
        ),
        SizedBox(height: 8),
        TextField(
          maxLines: maxLines,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            hintText: hintText,
          ),
        ),
      ],
    );
  }
}

class CustomPhoneField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [SizedBox(height: 8), CustomPhoneTextField()],
    );
  }
}
