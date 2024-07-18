import 'package:flutter/material.dart';

class CustomizedTextField extends StatefulWidget {
  final String rightText;
  final String hintText;
  const CustomizedTextField(
      {Key? key, required this.hintText, required this.rightText})
      : super(key: key);

  @override
  State<CustomizedTextField> createState() => _CustomizedTextFieldState();
}

class _CustomizedTextFieldState extends State<CustomizedTextField> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      height: 41,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          border: Border.all(
            color: Colors.black,
          ),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 14),
              child: Text(widget.rightText,
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
              padding: const EdgeInsets.only(right: 14),
              child: SizedBox(
                width: 178,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 0),
                  child: TextField(
                      cursorHeight: 20,
                      decoration: InputDecoration(
                          hintText: widget.hintText,
                          hintStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w800,
                              color: Color(0xffAFADAD)),
                          border: InputBorder.none)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
