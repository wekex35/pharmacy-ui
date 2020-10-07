import 'package:flutter/material.dart';
import 'package:pharmacy/utils/theme_color.dart';

class CategoriesIcons extends StatelessWidget {
  final double bgRadius;
  final Color bgColor;

  final icon;
  final double iconSize;
  final Color iconColor;

  final String label;
  final Color labelColor;
  final double labelSize;

  final double gapHeight;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final Function() onPressed;

  CategoriesIcons(
      {
        this.bgRadius = 100,
      this.bgColor = Colors.indigo,
      this.icon = Icons.border_all,
      this.iconColor = ThemeColor.textColorLight,
      this.iconSize = 70,
      this.label = "Label",
      this.labelColor = ThemeColor.textColorDark,
      this.labelSize = 15,
      this.gapHeight = 5,
      this.margin = const EdgeInsets.all(5),
      this.padding = const EdgeInsets.all(2),
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Material(
        child: InkWell(
          onTap: onPressed,
          child: Padding(
            padding: margin,
            child: Column(children: [
              CircleAvatar(
                radius: bgRadius,
                backgroundColor: bgColor,
                child: Icon(
                  icon,
                  size: iconSize,
                  color: iconColor,
                ),
              ),
              SizedBox(
                height: gapHeight,
              ),
              Text(
                label,
                style: TextStyle(color: labelColor, fontSize: labelSize),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
