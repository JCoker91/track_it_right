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
