// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, unnecessary_string_escapes, prefer_const_literals_to_create_immutables

import 'package:course_app/constants/color.dart';
import 'package:flutter/material.dart';

class EmojiText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 25),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Let\'s Boost Your\nCareer With Us',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
                color: ourFontColor,
              ),
            ),
            TextSpan(text: '✨', style: TextStyle(fontSize: 26)),
          ],
        ),
      ),
    );
  }
}
