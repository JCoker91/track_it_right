import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:track_it_right/constants/constants.dart';
import 'package:track_it_right/constants/responsive.dart';
import 'package:track_it_right/screens/components/assets_by_category.dart';
// import 'package:responsive_admin_dashboard/screens/components/analytic_cards.dart';
import 'package:track_it_right/screens/components/custom_appbar.dart';
import 'package:track_it_right/screens/components/users_by_device.dart';
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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(appPadding),
                    child: UsersByDevice(),
                  ),
                ),
                Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(appPadding),
                      child: AssetsByCategory(),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
    // return SafeArea(
    //   child: SingleChildScrollView(
    //     padding: EdgeInsets.all(appPadding),
    //     child: Column(
    //       children: [
    //         CustomAppbar(),
    //         SizedBox(
    //           height: appPadding,
    //         ),
    //         Column(
    //           children: [
    //             Row(
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               children: [
    //                 Expanded(
    //                   flex: 5,
    //                   child: Column(
    //                     children: [
    //                       AnalyticCards(),
    //                       SizedBox(
    //                         height: appPadding,
    //                       ),
    //                       Users(),
    //                       if (Responsive.isMobile(context))
    //                         SizedBox(
    //                           height: appPadding,
    //                         ),
    //                       if (Responsive.isMobile(context)) Discussions(),
    //                     ],
    //                   ),
    //                 ),
    //                 if (!Responsive.isMobile(context))
    //                   SizedBox(
    //                     width: appPadding,
    //                   ),
    //                 if (!Responsive.isMobile(context))
    //                   Expanded(
    //                     flex: 2,
    //                     child: Discussions(),
    //                   ),
    //               ],
    //             ),
    //             Row(
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               children: [
    //                 Expanded(
    //                   flex: 5,
    //                   child: Column(
    //                     children: [
    //                       SizedBox(
    //                         height: appPadding,
    //                       ),
    //                       Row(
    //                         children: [
    //                           if(!Responsive.isMobile(context))
    //                             Expanded(
    //                               child: TopReferals(),
    //                               flex: 2,
    //                             ),
    //                           if(!Responsive.isMobile(context))
    //                             SizedBox(width: appPadding,),
    //                           Expanded(
    //                             flex: 3,
    //                             child: Viewers(),
    //                           ),
    //                         ],
    //                         crossAxisAlignment: CrossAxisAlignment.start,
    //                       ),
    //                       SizedBox(
    //                         height: appPadding,
    //                       ),
    //                       if (Responsive.isMobile(context))
    //                         SizedBox(
    //                           height: appPadding,
    //                         ),
    //                       if (Responsive.isMobile(context)) TopReferals(),
    //                       if (Responsive.isMobile(context))
    //                         SizedBox(
    //                           height: appPadding,
    //                         ),
    //                       if (Responsive.isMobile(context)) UsersByDevice(),
    //                     ],
    //                   ),
    //                 ),
    //                 if (!Responsive.isMobile(context))
    //                   SizedBox(
    //                     width: appPadding,
    //                   ),
    //                 if (!Responsive.isMobile(context))
    //                   Expanded(
    //                     flex: 2,
    //                     child: UsersByDevice(),
    //                   ),
    //               ],
    //             ),
    //           ],
    //         ),

    //       ],
    //     ),
    //   ),
    // );
  }
}
