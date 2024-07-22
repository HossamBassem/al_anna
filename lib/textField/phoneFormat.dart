import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/services.dart';

class CustomPhoneTextField extends StatefulWidget {
  final String? initialValue;

  const CustomPhoneTextField({Key? key, this.initialValue}) : super(key: key);

  @override
  _CustomPhoneTextFieldState createState() => _CustomPhoneTextFieldState();
}

class _CustomPhoneTextFieldState extends State<CustomPhoneTextField> {
  late TextEditingController _phoneController;

  @override
  void initState() {
    super.initState();
    _phoneController = TextEditingController(text: widget.initialValue);
  }

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 41,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1.0),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          SizedBox(
            child: CountryCodePicker(
              onChanged: (countryCode) {
                // Handle country code change if needed
              },
              padding: EdgeInsets.all(0),
              flagWidth: 24,
              hideMainText: true,
              initialSelection: 'QA',
              favorite: ['+974', 'QA'],
              showCountryOnly: false,
              showDropDownButton: false,
              showOnlyCountryWhenClosed: true,
              alignLeft: false,
            ),
          ),
          VerticalDivider(
            color: Colors.black, // Customizable color
            width: 1, // Customizable width
            thickness: 1, // Customizable thickness
            indent: 8, // Customizable indentation from the top
            endIndent: 8, // Customizable indentation from the bottom
          ),
          Expanded(
            child: TextField(
              maxLength: 8,
              maxLengthEnforcement: MaxLengthEnforcement.enforced,
              controller: _phoneController,
              decoration: InputDecoration(
                counterStyle: TextStyle(
                  height: double.minPositive,
                ),
                counterText: '',
                hintText: "7784 5436",
                border: InputBorder.none,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 6, horizontal: 13),
              ),
              textAlign: TextAlign.start,
              textAlignVertical: TextAlignVertical.center,
              keyboardType: TextInputType.phone,
            ),
          ),
        ],
      ),
    );
  }
}
