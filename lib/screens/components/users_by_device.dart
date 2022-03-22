import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:track_it_right/constants/constants.dart';

class UsersByDevice extends StatelessWidget {
  const UsersByDevice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            offset: Offset(2.0, 8.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
        borderRadius: BorderRadius.circular(20),
        color: widgetColor,
      ),
      margin: EdgeInsets.fromLTRB(
        appPaddingDouble,
        appPadding,
        appPadding,
        appPadding,
      ),
      height: 300,
      child: _PieChart(),
    );
  }
}

class _PieChart extends StatelessWidget {
  const _PieChart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(appPadding),
      child: AspectRatio(
        aspectRatio: 1.3,
        child: Card(
          color: widgetColor,
          child: AspectRatio(
            aspectRatio: 1,
            child: PieChart(
              PieChartData(
                sectionsSpace: 2,
                centerSpaceRadius: double.infinity,
                sections: [
                  PieChartSectionData(
                    titleStyle: TextStyle(
                      color: whiteColor,
                    ),
                    color: bluePrimary,
                    showTitle: true,
                    title: "Active",
                    value: 560,
                  ),
                  PieChartSectionData(
                    titleStyle: TextStyle(
                      color: whiteColor,
                    ),
                    color: orangeAccent,
                    showTitle: true,
                    title: "Pending",
                    value: 220,
                  ),
                  PieChartSectionData(
                    titleStyle: TextStyle(
                      color: whiteColor,
                    ),
                    color: pinkAccent,
                    showTitle: true,
                    title: "Discarded",
                    value: 110,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
