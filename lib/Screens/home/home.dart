// ignore_for_file: prefer_const_constructors

import 'package:course_app/Screens/home/widget/search_input_bar.dart';
import 'package:course_app/constants/color.dart';
import 'package:flutter/material.dart';

import 'widget/catagoery_title.dart';
import 'widget/emoji_text.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            EmojiText(),
            SearchInput(),
            CategoryTitle(
              leftText: "Top Courses",
              rightText: "View All",
            ),
          ],
        ),
      ),
    );
  }

  _buildAppBar() {
    return AppBar(
      backgroundColor: myBackfoundColor,
      elevation: 0.0,
      centerTitle: false,
      title: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Text(
          'Hello Shubh!',
          style: TextStyle(
            fontSize: 17.0,
            color: fontLightColor,
          ),
        ),
      ),
      actions: [
        Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10, right: 20),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: fontLightColor.withOpacity(0.3),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(15)),
              child: Image.asset(
                'assets/icons/notification.png',
                width: 30,
              ),
            ),
            Positioned(
              top: 15,
              right: 28,
              child: Container(
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                  color: myAccentColor,
                  shape: BoxShape.circle,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
