import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:track_it_right/constants/constants.dart';
import 'package:track_it_right/constants/responsive.dart';
import 'package:track_it_right/screens/components/assets_by_category.dart';
// import 'package:responsive_admin_dashboard/screens/components/analytic_cards.dart';
import 'package:track_it_right/screens/components/custom_appbar.dart';
import 'package:track_it_right/screens/components/users_by_device.dart';
import 'package:track_it_right/screens/components/recent_activity.dart';
// import 'package:responsive_admin_dashboard/screens/components/top_referals.dart';
// import 'package:responsive_admin_dashboard/screens/components/users.dart';
// import 'package:responsive_admin_dashboard/screens/components/viewers.dart';

// import 'discussions.dart';

class DashboardContent extends StatelessWidget {
  const DashboardContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: Responsive.isDesktop(context)
            ? EdgeInsets.all(0)
            : EdgeInsets.fromLTRB(0, appPadding, 0, appPadding),
        child: Column(
          children: [
            CustomAppbar(),
            SizedBox(
              height: appPadding,
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: UsersByDevice(),
                ),
                Expanded(
                  flex: 3,
                  child: AssetsByCategory(),
                ),
              ],
            ),
            RecentActivity(),
          ],
        ),
      ),
    );
  }
}
