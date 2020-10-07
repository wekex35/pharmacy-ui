import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pharmacy/ui/botton_icon.dart';
import 'package:pharmacy/utils/app_utils.dart';
import 'package:pharmacy/utils/theme_color.dart';

class SuccessDialog extends StatelessWidget {
  final title;
  final description;
  final double heigth;
  final double width;
  final onPressed;

  SuccessDialog(
      {@required this.title,
      @required this.description,
      @required this.heigth,
      @required this.width,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    _midTitleAndDescription() {
      return Padding(
        padding: EdgeInsets.all(width * 6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: width * 6,
                  color: ThemeColor.textColorDark,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: heigth * 1.5,
            ),
            Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: width * 4,
              ),
            )
          ],
        ),
      );
    }

    return Padding(
      padding: EdgeInsets.all(width * 5),
      child: ListView(shrinkWrap: true, children: [
        Icon(
          Icons.check_circle_outline,
          color: ThemeColor.primaryColor,
          size: width * 20,
        ),
        _midTitleAndDescription(),
        ButtonIcon(
          bgColor: ThemeColor.primaryColor,
          isShowIcon: false,
          labelSize: width * 5,
          label: "Done",
          radius: width * 20,
          onPressed: onPressed,
        ),
      ]),
    );
  }
}
