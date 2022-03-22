import 'package:flutter/material.dart';
import 'package:track_it_right/constants/constants.dart';

class RecentActivity extends StatelessWidget {
  const RecentActivity({Key? key}) : super(key: key);

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
      height: 300,
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(
        appPaddingDouble,
        appPadding,
        appPaddingDouble,
        appPadding,
      ),
      child: _RecentActivityTable(),
    );
  }
}

class _RecentActivityTable extends StatelessWidget {
  const _RecentActivityTable({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: appPadding),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              // padding: EdgeInsets.symmetric(horizontal: appPaddingDouble),
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: appPadding, top: appPadding),
              child: Text(
                "Recent Activity",
                style: TextStyle(
                  color: whiteColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              width: double.infinity,
              child: SingleChildScrollView(
                child: DataTable(
                  columns: [
                    DataColumn(
                      label: Text(
                        "Date",
                        style: TextStyle(
                          color: whiteColor,
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        "User",
                        style: TextStyle(
                          color: whiteColor,
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        "Action",
                        style: TextStyle(
                          color: whiteColor,
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        "Asset ID",
                        style: TextStyle(
                          color: whiteColor,
                        ),
                      ),
                    ),
                  ],
                  dividerThickness: 2.0,
                  horizontalMargin: appPaddingDouble,
                  showBottomBorder: true,
                  rows: [
                    _DataRowMaker(
                        DateTime.now().day.toString() +
                            "-" +
                            DateTime.now().month.toString() +
                            "-" +
                            DateTime.now().year.toString(),
                        "Guest",
                        "Update",
                        "11344"),
                    _DataRowMaker(
                        DateTime.now().day.toString() +
                            "-" +
                            DateTime.now().month.toString() +
                            "-" +
                            DateTime.now().year.toString(),
                        "Guest",
                        "Update",
                        "24288"),
                    _DataRowMaker(
                        DateTime.now().day.toString() +
                            "-" +
                            DateTime.now().month.toString() +
                            "-" +
                            DateTime.now().year.toString(),
                        "Guest",
                        "Update",
                        "55543"),
                    _DataRowMaker(
                        DateTime.now().day.toString() +
                            "-" +
                            DateTime.now().month.toString() +
                            "-" +
                            DateTime.now().year.toString(),
                        "Guest",
                        "Update",
                        "42344"),
                    _DataRowMaker(
                        DateTime.now().day.toString() +
                            "-" +
                            DateTime.now().month.toString() +
                            "-" +
                            DateTime.now().year.toString(),
                        "Guest",
                        "Update",
                        "54567"),
                    _DataRowMaker(
                        DateTime.now().day.toString() +
                            "-" +
                            DateTime.now().month.toString() +
                            "-" +
                            DateTime.now().year.toString(),
                        "Guest",
                        "Update",
                        "88755"),
                    _DataRowMaker(
                        DateTime.now().day.toString() +
                            "-" +
                            DateTime.now().month.toString() +
                            "-" +
                            DateTime.now().year.toString(),
                        "Guest",
                        "Update",
                        "67846"),
                    _DataRowMaker(
                        DateTime.now().day.toString() +
                            "-" +
                            DateTime.now().month.toString() +
                            "-" +
                            DateTime.now().year.toString(),
                        "Guest",
                        "Update",
                        "43211"),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  DataRow _DataRowMaker(
      String date, String user, String action, String assetId) {
    return DataRow(
      cells: [
        DataCell(
          Text(
            date,
            style: TextStyle(
              color: whiteColor,
            ),
          ),
        ),
        DataCell(
          Text(
            user,
            style: TextStyle(
              color: whiteColor,
            ),
          ),
        ),
        DataCell(
          Text(
            action,
            style: TextStyle(
              color: whiteColor,
            ),
          ),
        ),
        DataCell(
          Text(
            assetId,
            style: TextStyle(
              color: whiteColor,
            ),
          ),
        ),
      ],
    );
  }
}
