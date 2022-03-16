import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:track_it_right/constants/constants.dart';
import 'package:track_it_right/constants/responsive.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        // color: Colors.red,
        child: Row(
          children: [
            SvgPicture.asset(
              "assets/icons/person.svg",
              height: 25,
              color: whiteColor,
            ),
            Container(
              child: Text(
                'User',
                style: TextStyle(
                  color: whiteColor,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
