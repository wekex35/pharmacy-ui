import 'package:flutter/material.dart';
import 'package:pharmacy/utils/theme_color.dart';

class ButtonIcon extends StatelessWidget {
  final bgColor;

  final icon;
  final double iconSize;
  final Color iconColor;
  final bool isShowIcon;

  final String label;
  final Color labelColor;
  final double labelSize;

  final Function() onPressed;

  final double width;
  final double height;
  final double radius;

  ButtonIcon({
    this.radius = 10,
    this.width,
    this.height = 40,
    this.icon = Icons.camera_alt,
    this.iconColor = ThemeColor.textColorLight,
    this.iconSize = 50,
    this.label = "Upload your Prescription",
    this.labelColor = ThemeColor.textColorLight,
    this.labelSize = 16,
    this.onPressed,
    this.bgColor = Colors.orange,
    this.isShowIcon = true,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: RaisedButton.icon(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius)
          
        ),
        
        onPressed: onPressed,
        color: bgColor,
        icon: isShowIcon
            ? Icon(
                icon,
                size: iconSize,
                color: iconColor,
              )
            : Container(),
        label: Text(
          label,
          style: TextStyle(color: labelColor, fontSize: labelSize),
        ),
      ),
    );
  }
}
