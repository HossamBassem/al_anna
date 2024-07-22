import 'package:flutter/material.dart';
import 'dart:io';

class CircleAvatarB extends StatelessWidget {
  final ImageProvider<Object>? image; // Make image optional

  CircleAvatarB({this.image});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 60,
      backgroundImage: image ?? AssetImage('assets/images/upload.jpg'),
      backgroundColor: Colors.transparent,
    );
  }
}
