import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/percent_indicator.dart';

class AdminVotingContainer extends StatefulWidget {
  @override
  _AdminVotingContainerState createState() => _AdminVotingContainerState();
}

class _AdminVotingContainerState extends State<AdminVotingContainer> {
  int selectedOption = -1; // -1 indicates no option is selected

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
      child: Container(
        padding: const EdgeInsets.only(right: 16, left: 16, bottom: 16),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1, color: Color(0xff605757)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'إنهاء التصويت',
                  style: TextStyle(
                      color: Color(0xffE7A967),
                      decoration: TextDecoration.underline),
                ),
              ),
            ),
            SizedBox(height: 5),
            Row(children: [
              SvgPicture.asset('assets/images/mdi_vote-outline.svg'),
              SizedBox(
                width: 10,
              ),
              Text(
                'متى نتجمع بالعنّة في أي ساعة؟',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w800,
                    color: Color(0xff605757)),
              ),
            ]),
            SizedBox(height: 10),
            InkWell(
              onTap: () => _selectOption(0),
              child: PollOption(
                optionText: 'الساعة التاسعة',

                percentage: selectedOption == 0 ? 0.7 : 0.7, // Adjust as needed
                isSelected: selectedOption == 0,
              ),
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () => _selectOption(1),
              child: PollOption(
                optionText: 'الساعة العاشرة',
                percentage: selectedOption == 1 ? 0.3 : 0.3, // Adjust as needed
                isSelected: selectedOption == 1,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _selectOption(int option) {
    setState(() {
      selectedOption = option;
    });

    // Add any additional logic here, such as updating a server or database
  }
}

class PollOption extends StatelessWidget {
  final String optionText;
  final double percentage;
  final bool isSelected;

  const PollOption({
    Key? key,
    required this.optionText,
    required this.percentage,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Row(
        children: [
          Expanded(
            child: LinearPercentIndicator(
              lineHeight: 18.0,
              percent: percentage,
              center: Text(
                '${(percentage * 100).toInt()}%',
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.white,
                ),
              ),
              backgroundColor: Colors.grey[300]!,
              progressColor: isSelected ? Colors.green : Colors.grey,
              barRadius: Radius.circular(7.0),
            ),
          ),
          SizedBox(width: 10),
          Icon(
            isSelected ? Icons.check_circle : Icons.radio_button_unchecked,
            color: isSelected ? Colors.green : Colors.grey,
          ),
          SizedBox(width: 5),
          Text(
            optionText,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: isSelected ? Colors.black : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
