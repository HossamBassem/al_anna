import 'package:flutter/material.dart';

class CustomizedDropDownForm extends StatefulWidget {
  @override
  State<CustomizedDropDownForm> createState() => _CustomizedDropDownFormState();
}

class _CustomizedDropDownFormState extends State<CustomizedDropDownForm> {
  var _selectedLocation;
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
              child: Text('مكان العنة',
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
                width: 250,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 0),
                  child: DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                      labelText: 'اختر مكان العنة',
                      border: InputBorder.none,
                    ),
                    value: _selectedLocation,
                    items: <String>['Location 1', 'Location 2', 'Location 3']
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        _selectedLocation = newValue;
                      });
                    },
                    validator: (value) {
                      if (value == null) {
                        return 'الرجاء اختيار مكان العنة';
                      }
                      return null;
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
