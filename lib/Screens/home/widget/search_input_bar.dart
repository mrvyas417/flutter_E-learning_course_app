// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:course_app/constants/color.dart';
import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.all(25),
          decoration: BoxDecoration(
            border: Border.all(
              color: fontLightColor.withOpacity(0.3),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextField(
            cursorColor: fontLightColor,
            decoration: InputDecoration(
              fillColor: fontLightColor.withOpacity(0.1),
              filled: true,
              contentPadding: EdgeInsets.all(18),
              border: InputBorder.none,
              hintText: "Search For Maths ,Trignometry ,Science...",
              hintStyle: TextStyle(color: fontLightColor),
            ),
          ),
        ),
        Positioned(
          right: 45,
          top: 35,
          child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: myAccentColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Image.asset(
                'assets/icons/search.png',
                width: 20,
              )),
        )
      ],
    );
  }
}
