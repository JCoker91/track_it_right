import 'package:flutter/material.dart';
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
      child: _BarChart(),
    );
  }
}

class _BarChart extends StatelessWidget {
  const _BarChart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(appPadding),
      child: BarChart(
        BarChartData(
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
              margin: 16,
              getTitles: (double value) {
                switch (value.toInt()) {
                  case 0:
                    return 'Monday';
                  case 1:
                    return 'T';
                  case 2:
                    return 'W';
                  case 3:
                    return 'T';
                  case 4:
                    return 'F';
                  case 5:
                    return 'S';
                  case 6:
                    return 'S';
                  default:
                    return '';
                }
              },
            ),
            leftTitles: SideTitles(
              showTitles: false,
            ),
          ),
          barGroups: [
            BarChartGroupData(
              x: 0,
              barRods: [
                BarChartRodData(
                  width: 20,
                  colors: [greenAccent],
                  y: 5,
                ),
              ],
            ),
            BarChartGroupData(
              x: 0,
              barRods: [
                BarChartRodData(
                  colors: [orangeAccent],
                  y: 55,
                  width: 20,
                  backDrawRodData: BackgroundBarChartRodData(
                    show: true,
                  ),
                ),
              ],
            ),
            BarChartGroupData(
              x: 0,
              barRods: [
                BarChartRodData(
                  colors: [bluePrimary],
                  y: 34,
                  width: 20,
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
