import 'dart:io';
import 'package:al_anna/CustomizedTextField.dart';
import 'package:al_anna/MyElevatedButton.dart';
import 'package:al_anna/Screens/Bills.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';

class AddNewBill extends StatefulWidget {
  @override
  State<AddNewBill> createState() => _AddNewBillState();
}

class _AddNewBillState extends State<AddNewBill> {
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
              'تسجيل فاتورة جديدة',
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
            children: [
              SizedBox(
                  height: 50,
                  child: CustomizedTextField(
                      hintText: '4566', rightText: 'المبلغ')),
              SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 80,
                child: CustomizedTextField(
                    hintText: 'أدخل المشتريات', rightText: 'المشتريات'),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text('صورة الفاتورة ',
                      style: TextStyle(
                          color: Color(0xff605757),
                          fontSize: 14,
                          fontWeight: FontWeight.w800)),
                  const SizedBox(
                    width: 35,
                  ),
                  GestureDetector(
                    onTap: _pickImage,
                    child: Container(
                      height: 113,
                      width: 240,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(20)),
                      alignment: Alignment.center,
                      child: _selectedImage == null
                          ? SvgPicture.asset(
                              'assets/images/icon-park_upload-picture.svg',
                              height: 50,
                              width: 50,
                            )
                          : ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.file(
                                _selectedImage!,
                                fit: BoxFit.fill,
                                height: 113,
                                width: 240,
                              ),
                            ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 116,
              ),
              Center(
                child: MyElevatedButton(
                  onPressed: () {
                    // Action for saving the bill
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Bills();
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
                ),
              ),
              SizedBox(
                height: 21,
              ),
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
