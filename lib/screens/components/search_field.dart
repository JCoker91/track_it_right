import 'package:flutter/material.dart';
import 'package:track_it_right/constants/constants.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: "Search Assets",
          helperStyle: TextStyle(
            color: widgetColor.withOpacity(0.5),
            fontSize: 15,
          ),
          fillColor: whiteColor,
          filled: true,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10)),
          prefixIcon: Icon(
            Icons.search,
            color: widgetColor.withOpacity(0.5),
          )),
    );
  }
}
