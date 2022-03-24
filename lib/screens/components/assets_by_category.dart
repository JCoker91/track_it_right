import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:track_it_right/constants/constants.dart';
import 'package:fl_chart/fl_chart.dart';

class AssetsByCategory extends StatelessWidget {
  const AssetsByCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: widgetColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            offset: Offset(2.0, 8.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
      ),
      height: 300,
      margin: EdgeInsets.fromLTRB(
        appPadding,
        appPadding,
        appPaddingDouble,
        appPadding,
      ),
      child: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: appPadding, top: appPadding),
              child: Text(
                "Assets by Categories",
                style: TextStyle(
                  color: whiteColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            flex: 1,
          ),
          Expanded(
            child: _BarChart(),
            flex: 3,
          ),
        ],
      ),
    );
  }
}

class _BarChart extends StatelessWidget {
  const _BarChart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double barGroupWidth = MediaQuery.of(context).size.width * .02;
    double barGroupSpace = MediaQuery.of(context).size.width * .05;
    return Padding(
      padding: const EdgeInsets.all(appPadding),
      child: BarChart(
        BarChartData(
          barTouchData: BarTouchData(
              touchTooltipData: BarTouchTooltipData(tooltipBgColor: darkColor)),
          minY: 0,
          borderData: FlBorderData(
            show: false,
          ),
          groupsSpace: barGroupSpace,
          titlesData: FlTitlesData(
            show: true,
            rightTitles: SideTitles(showTitles: false),
            topTitles: SideTitles(showTitles: false),
            bottomTitles: SideTitles(
              showTitles: true,
              getTextStyles: (context, value) => const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
              getTitles: (double value) {
                switch (value.toInt()) {
                  case 0:
                    return 'Desktop';
                  case 1:
                    return 'Laptop';
                  case 2:
                    return 'Monitor';
                  case 3:
                    return 'Phone';
                  case 4:
                    return 'Tablet';
                  default:
                    return 'Other';
                }
              },
            ),
            leftTitles: SideTitles(
              showTitles: true,
              getTextStyles: (context, value) => const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
              getTitles: (double value) {
                return value % 10 == 0 ? value.toString() : '';
              },
            ),
          ),
          barGroups: [
            BarChartGroupData(
              x: 0,
              barRods: [
                BarChartRodData(
                  width: barGroupWidth,
                  colors: [greenAccent],
                  y: 5,
                ),
              ],
            ),
            BarChartGroupData(
              x: 1,
              barRods: [
                BarChartRodData(
                  colors: [orangeAccent],
                  y: 55,
                  width: barGroupWidth,
                  // backDrawRodData: BackgroundBarChartRodData(
                  //   show: true,
                  // ),
                ),
              ],
            ),
            BarChartGroupData(
              x: 2,
              barRods: [
                BarChartRodData(
                  colors: [bluePrimary],
                  y: 34,
                  width: barGroupWidth,
                ),
              ],
            ),
            BarChartGroupData(
              x: 3,
              barRods: [
                BarChartRodData(
                  colors: [pinkAccent],
                  y: 14,
                  width: barGroupWidth,
                ),
              ],
            ),
            BarChartGroupData(
              x: 4,
              barRods: [
                BarChartRodData(
                  colors: [yellowAccent],
                  y: 44,
                  width: barGroupWidth,
                ),
              ],
            ),
            BarChartGroupData(
              x: 5,
              barRods: [
                BarChartRodData(
                  colors: [whiteColor],
                  y: 2,
                  width: barGroupWidth,
                ),
              ],
            ),
          ],

          alignment: BarChartAlignment.center,

          // read about it in the BarChartData section
        ),
      ),
    );
  }
}
