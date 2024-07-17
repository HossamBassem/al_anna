import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NameTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      height: 41,
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.black,
            ),
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.black,
              )),
          hintText: "الإسم",
          contentPadding: EdgeInsets.symmetric(vertical: 8),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.black)),
          prefixIcon: buildPrefixIcon(),
        ),
      ),
    );
  }

  Widget buildPrefixIcon() {
    return Row(
      mainAxisSize: MainAxisSize.min, // Prevent horizontal expansion
      children: [
        SizedBox(width: 24),
        SvgPicture.asset(
          'assets/images/iconamoon_profile-light.svg',
          width: 22, height: 22,
          // Adjust width as needed
          allowDrawingOutsideViewBox: true,
        ),
        SizedBox(width: 24.0), // Add some spacing
        Container(
          width: 1.0,
          height: 20.0, // Adjust height as needed
          color: Color.fromARGB(255, 0, 0, 0), // Adjust color as needed
        ),
        SizedBox(width: 8.0), // Add some spacing
      ],
    );
  }
}
