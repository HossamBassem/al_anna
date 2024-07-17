import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PasswordTextField extends StatefulWidget {
  final String hintText;

  const PasswordTextField({Key? key, required this.hintText}) : super(key: key);

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 41,
      child: TextField(
        scrollPadding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom, top: 10),
        obscureText: _obscureText,
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
          hintText: widget.hintText,
          contentPadding: EdgeInsets.symmetric(vertical: 8),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.black)),
          prefixIcon: buildPrefixIcon(),
          suffixIcon: IconButton(
            icon: Icon(_obscureText ? Icons.visibility_off : Icons.visibility),
            onPressed: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
          ),
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
          'assets/images/password icon.svg',
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
