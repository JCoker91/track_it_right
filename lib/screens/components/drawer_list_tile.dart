import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:track_it_right/constants/constants.dart';

class DrawerListTile extends StatelessWidget {
  const DrawerListTile(
      {Key? key,
      required this.title,
      required this.svgSrc,
      required this.tap,
      required this.iconColor})
      : super(key: key);

  final String title, svgSrc;
  final VoidCallback tap;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: tap,
      hoverColor: bluePrimary.withOpacity(.5),
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        color: iconColor,
        height: 20,
      ),
      title: Text(
        title,
        style: TextStyle(color: whiteColor),
      ),
    );
  }
}
