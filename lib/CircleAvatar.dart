import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CircleAvatarB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CircleAvatar(
      radius: 54,
      backgroundColor: Colors.white,
      child: SvgPicture.asset('assets/images/icon-park_upload-picture.svg'),
    );
  }
}
