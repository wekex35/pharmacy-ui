import 'package:flutter/material.dart';
import 'package:pharmacy/utils/app_utils.dart';
import 'package:pharmacy/utils/theme_color.dart';

class StackIconText extends StatelessWidget {
  final icon;
  final String text;
  final backgroundColor;
  StackIconText({
    this.icon,
    this.text = "5",
    this.backgroundColor = ThemeColor.colorOrange,
  });
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final double width = getWidth(constraints);
        final double height = getHeight(constraints);
        return Stack(
          children: <Widget>[
            icon,
            Positioned(
              right: 0,
              top: 0,
              child: CircleAvatar(
                backgroundColor: ThemeColor.colorOrange,
                radius: height * 15,
                child: Text(
                  text,
                  style: TextStyle(
                    color: Colors.white, fontSize: height * 15,
                  fontWeight: FontWeight.bold
                      //  background: Colors.deepOrange,
                      ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
