import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pharmacy/utils/theme_color.dart';

class SectionHeader extends StatelessWidget {
  final String leftTitle;
  final String rigthTitle;
  final Function() onPressed;
  final double leftFontSize;
  SectionHeader({
    this.leftTitle = "Left Title",
    this.rigthTitle = "",
    this.onPressed,
    this.leftFontSize = 18,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          child : Text(
            leftTitle,
            style: TextStyle(
              fontWeight : FontWeight.bold,
              fontSize : leftFontSize,
              color : ThemeColor.textColorDark
            ),
          )
        ),
        Spacer(),
        Container(
          child : InkWell(
              onTap: onPressed,
              child: Text(
              rigthTitle,
              style: TextStyle(
                fontWeight : FontWeight.bold,
                fontSize : leftFontSize-3,
                color : ThemeColor.primaryColorLight
              ),
            ),
          )
        )
      ],
    );
  }
}