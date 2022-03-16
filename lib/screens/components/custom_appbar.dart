import 'package:flutter/material.dart';
import 'package:track_it_right/constants/constants.dart';
import 'package:track_it_right/constants/responsive.dart';
import 'package:track_it_right/controllers/controller.dart';
import 'package:track_it_right/screens/components/profile_info.dart';
import 'package:track_it_right/screens/components/search_field.dart';
import 'package:provider/provider.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: widgetColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          if (!Responsive.isDesktop(context))
            IconButton(
              onPressed: context.read<Controller>().controlMenu,
              icon: SvgPicture.asset(
                'assets/icons/drawer.svg',
                color: bluePrimary,
              ),
            ),
          if (!Responsive.isDesktop(context))
            Expanded(
              child: SizedBox(),
            ),
          if (Responsive.isDesktop(context))
            Expanded(
              flex: 3,
              child: Container(
                padding: const EdgeInsets.all(appPadding),
                alignment: Alignment.centerLeft,
                child: Image.asset(
                  'assets/images/logo.png',
                  height: 50,
                ),
              ),
            ),
          Container(
            constraints: !Responsive.isMobile(context)
                ? BoxConstraints(maxWidth: 300)
                : BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width - 50,
                  ),
            child: SearchField(),
          ),
          if (!Responsive.isMobile(context))
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: bluePrimary,
                onPrimary: whiteColor,
              ),
              onPressed: () {},
              child: Text("CREATE"),
            ),
          if (!Responsive.isMobile(context)) ProfileInfo()
        ],
      ),
    );
  }
}
