import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomContainer extends StatelessWidget {
  final String containerText;
  final SvgPicture icon;

  const CustomContainer(
      {super.key, required this.containerText, required this.icon});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 19),
      child: Container(
        width: double.infinity,
        decoration: ShapeDecoration(
          shape: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffDADADA), width: 1)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  icon,
                  SizedBox(
                    width: 7,
                  ),
                  Text('$containerText',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: Color(0xff605757))),
                ],
              ),
              Row(children: [SvgPicture.asset('assets/images/Arrow.svg')])
            ],
          ),
        ),
      ),
    );
  }
}
