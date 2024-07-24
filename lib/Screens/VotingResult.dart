import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fl_chart/fl_chart.dart';

class VotingResult extends StatelessWidget {
  final Map<int, List<Voter>> votesDetails = {
    0: [Voter('عبد الله المري', 'assets/images/Ellipse 5.png')],
    1: [
      Voter('عبد الله المري', 'assets/images/Ellipse 5.png'),
      Voter('باسم السليطي', 'assets/images/Ellipse 5.png'),
      Voter('خالد المسلم', 'assets/images/Ellipse 5.png'),
      Voter('عبد الله المري', 'assets/images/Ellipse 5.png'),
      Voter('باسم السليطي', 'assets/images/Ellipse 5.png'),
    ],
    2: [
      Voter('عبد الله المري', 'assets/images/Ellipse 5.png'),
      Voter('باسم السليطي', 'assets/images/Ellipse 5.png'),
      Voter('خالد المسلم', 'assets/images/Ellipse 5.png'),
    ],
    3: [
      Voter('عبد الله المري', 'assets/images/Ellipse 5.png'),
      Voter('باسم السليطي', 'assets/images/Ellipse 5.png'),
      Voter('خالد المسلم', 'assets/images/Ellipse 5.png'),
      Voter('عبد الله المري', 'assets/images/Ellipse 5.png'),
      Voter('باسم السليطي', 'assets/images/Ellipse 5.png'),
      Voter('خالد المسلم', 'assets/images/Ellipse 5.png'),
      Voter('عبد الله المري', 'assets/images/Ellipse 5.png'),
      Voter('باسم السليطي', 'assets/images/Ellipse 5.png'),
      Voter('خالد المسلم', 'assets/images/Ellipse 5.png'),
      Voter('عبد الله المري', 'assets/images/Ellipse 5.png'),
    ],
  };

  @override
  Widget build(BuildContext context) {
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
              onPressed: () {},
            ),
            title: const Text(
              'نتيجة التصويت ',
              textDirection: TextDirection.rtl,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
            ),
            backgroundColor: const Color(0xffE7A967),
            centerTitle: true,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 10),
            Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'نتائج التصويت',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                      color: Color(0xff605757)),
                )),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1, color: Color(0xff605757)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'متى نجتمع بالعنة فى اي ساعة',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                          color: Color(0xff605757)),
                      textDirection: TextDirection.rtl,
                    ),
                    SizedBox(height: 20),
                    AspectRatio(
                      aspectRatio: 1.5,
                      child: Stack(
                        children: [
                          BarChart(
                            BarChartData(
                              alignment: BarChartAlignment.spaceAround,
                              maxY: 12,
                              barTouchData: BarTouchData(enabled: false),
                              titlesData: FlTitlesData(
                                bottomTitles: AxisTitles(
                                  sideTitles: SideTitles(
                                    showTitles: true,
                                    getTitlesWidget: (value, meta) {
                                      final style = TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                      );
                                      Widget text;
                                      switch (value.toInt()) {
                                        case 0:
                                          text = Text('الثامنة', style: style);
                                          break;
                                        case 1:
                                          text = Text('التاسعة', style: style);
                                          break;
                                        case 2:
                                          text = Text('العاشرة', style: style);
                                          break;
                                        case 3:
                                          text = Text('الواحدة', style: style);
                                          break;
                                        default:
                                          text = Text('', style: style);
                                          break;
                                      }
                                      return SideTitleWidget(
                                        axisSide: meta.axisSide,
                                        space: 16.0,
                                        child: text,
                                      );
                                    },
                                  ),
                                ),
                                leftTitles: AxisTitles(
                                  sideTitles: SideTitles(showTitles: false),
                                ),
                                topTitles: AxisTitles(
                                  sideTitles: SideTitles(showTitles: false),
                                ),
                                rightTitles: AxisTitles(
                                  sideTitles: SideTitles(showTitles: false),
                                ),
                              ),
                              gridData: FlGridData(
                                show: true,
                                drawVerticalLine: false,
                                getDrawingHorizontalLine: (value) {
                                  return FlLine(
                                    color: Colors.grey.withOpacity(0.5),
                                    strokeWidth: 1,
                                  );
                                },
                              ),
                              borderData: FlBorderData(
                                show: false,
                              ),
                              barGroups: [
                                BarChartGroupData(
                                  x: 0,
                                  barRods: [
                                    BarChartRodData(
                                      toY: 1,
                                      color: Color(0xffFDC840),
                                      width: 16,
                                      borderRadius: BorderRadius.zero,
                                    ),
                                  ],
                                ),
                                BarChartGroupData(
                                  x: 1,
                                  barRods: [
                                    BarChartRodData(
                                      toY: 5,
                                      color: Color(0xff04BFDA),
                                      width: 16,
                                      borderRadius: BorderRadius.zero,
                                    ),
                                  ],
                                ),
                                BarChartGroupData(
                                  x: 2,
                                  barRods: [
                                    BarChartRodData(
                                      toY: 3,
                                      color: Color(0xffFFA84A),
                                      width: 16,
                                      borderRadius: BorderRadius.zero,
                                    ),
                                  ],
                                ),
                                BarChartGroupData(
                                  x: 3,
                                  barRods: [
                                    BarChartRodData(
                                      toY: 10,
                                      color: Color(0xff3AD29F),
                                      width: 16,
                                      borderRadius: BorderRadius.zero,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 0,
                            left: 0,
                            right: 0,
                            bottom: 0,
                            child: LayoutBuilder(
                              builder: (context, constraints) {
                                final barWidth = constraints.maxWidth / 4;
                                return Directionality(
                                  textDirection: TextDirection.ltr,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      buildVotesText(context, '1', barWidth, 0),
                                      buildVotesText(context, '5', barWidth, 1),
                                      buildVotesText(context, '3', barWidth, 2),
                                      buildVotesText(
                                          context, '10', barWidth, 3),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Directionality(
              textDirection: TextDirection.ltr,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  LegendIndicator(
                    color: Color(0xffFDC840),
                    text: 'الثامنة',
                  ),
                  LegendIndicator(
                    color: Color(0xff04BFDA),
                    text: 'التاسعة',
                  ),
                  LegendIndicator(
                    color: Color(0xffFFA84A),
                    text: 'العاشرة',
                  ),
                  LegendIndicator(
                    color: Color(0xff3AD29F),
                    text: 'الواحدة',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 65,
            ),
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

  Widget buildVotesText(
      BuildContext context, String votes, double barWidth, int index) {
    return GestureDetector(
      onTap: () => showVotesDialog(context, votesDetails[index]!),
      child: SizedBox(
        width: barWidth,
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: [
              Text(
                votes + ' ' + 'اصوات',
                style: TextStyle(
                    color: Color(0xffE7A967),
                    decoration: TextDecoration.underline),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  void showVotesDialog(BuildContext context, List<Voter> voters) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ...voters.map((voter) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(voter.imagePath),
                          ),
                          SizedBox(width: 10),
                          Text(voter.name),
                        ],
                      ),
                    )),
                SizedBox(height: 20),
                SizedBox(
                  height: 31,
                  width: 144,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 0, backgroundColor: Color(0xff3AD29F)),
                    onPressed: () {
                      Navigator.of(context).pop(); // To close the dialog
                    },
                    child: Text("تم",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w800)),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class Voter {
  final String name;
  final String imagePath;

  Voter(this.name, this.imagePath);
}

class LegendIndicator extends StatelessWidget {
  final Color color;
  final String text;

  const LegendIndicator({
    Key? key,
    required this.color,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 16,
          height: 16,
          color: color,
        ),
        SizedBox(width: 4),
        Text(text),
      ],
    );
  }
}
