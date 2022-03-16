import 'package:flutter/material.dart';
import 'package:track_it_right/constants/constants.dart';
import 'package:track_it_right/constants/responsive.dart';
import 'drawer_list_tile.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: widgetColor,
        child: ListView(
          children: [
            if (!Responsive.isDesktop(context))
              Container(
                padding: const EdgeInsets.all(appPadding),
                child: Image.asset(
                  'assets/images/logo.png',
                  height: 40,
                ),
              ),
            if (Responsive.isDesktop(context))
              SizedBox(
                height: 50,
              ),
            DrawerListTile(
                title: 'Dash Board',
                svgSrc: 'assets/icons/dashboard.svg',
                iconColor: bluePrimary,
                tap: () {}),
            DrawerListTile(
                title: 'Assets',
                svgSrc: 'assets/icons/desktop.svg',
                iconColor: greenAccent,
                tap: () {}),
            DrawerListTile(
                title: 'Categories',
                svgSrc: 'assets/icons/category.svg',
                iconColor: orangeAccent,
                tap: () {}),
            DrawerListTile(
              title: 'Users',
              svgSrc: 'assets/icons/people.svg',
              iconColor: yellowAccent,
              tap: () {},
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: appPadding * 2),
              child: Divider(
                color: whiteColor,
                thickness: 0.2,
              ),
            ),
            DrawerListTile(
              title: 'Settings',
              svgSrc: 'assets/icons/tune.svg',
              tap: () {},
              iconColor: pinkAccent,
            ),
            DrawerListTile(
              title: 'Logout',
              svgSrc: 'assets/icons/person.svg',
              tap: () {},
              iconColor: whiteColor,
            ),
          ],
        ));
  }
}
