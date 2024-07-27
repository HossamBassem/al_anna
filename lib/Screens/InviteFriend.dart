import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InviteFriend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
              'دعوة صديق',
              textDirection: TextDirection.rtl,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
            ),
            backgroundColor: const Color(0xffE7A967),
            centerTitle: true,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'لينك العنة',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                  color: Color(0xff605757)),
            ),
            SizedBox(
              height: 16,
            ),
            LinkField(link: 'https://habib.sf/share/9574gkf5'),
            SizedBox(height: 24),
            Text(
              'لينك البرنامج',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            LinkField(link: 'https://enaa.sf/share/9574gkf5'),
            Spacer(),
            Image.asset(
              'assets/images/Group 13.png', // Replace with your fire icon URL or use AssetImage for local assets
              height: 145,
              width: 145,
            ),
          ],
        ),
      ),
    );
  }
}

class LinkField extends StatelessWidget {
  final String link;

  LinkField({required this.link});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextField(
                  textAlign: TextAlign.center,
                  controller: TextEditingController(text: link),
                  readOnly: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.copy, color: Color(0xffE7A967)),
              onPressed: () {
                // Action to copy link
              },
            ),
            SizedBox(
              height: 48, // Adjust the height as needed
              child: VerticalDivider(
                color: Colors.black, // Customizable color
                width: 1, // Customizable width
                thickness: 1, // Customizable thickness
                indent: 8, // Customizable indentation from the top
                endIndent: 8, // Customizable indentation from the bottom
              ),
            ),
            IconButton(
              icon: Icon(Icons.share, color: Color(0xffE7A967)),
              onPressed: () {
                // Action to share link
              },
            ),
          ],
        ),
      ),
    );
  }
}
