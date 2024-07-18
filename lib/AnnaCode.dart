import 'package:flutter/material.dart';

class AnnaCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.grey,
          ),
        ),
        child: Row(
          children: [
            Text('hoiuggliuhi'),
            VerticalDivider(color: Colors.black, thickness: 2.0),
            Text('hoiuggliuhi'),
          ],
        ),
      ),
    );
  }
}
