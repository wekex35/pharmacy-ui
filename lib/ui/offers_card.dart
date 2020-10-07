import 'package:flutter/material.dart';
import 'package:pharmacy/utils/theme_color.dart';

class OffersCard extends StatelessWidget {
  final double width;
  final double height;
  final Color bgColor;

  final String image;
  final double imageWidth;

  final double titleSize;
  final double subTitleSize;

  final Color titleColor;
  final Color subTitleColor;

  final String title;
  final String subTitle;

  final EdgeInsets padding;

  OffersCard({
    this.height = 120,
    this.width = 280,
    this.bgColor = ThemeColor.colorSkyBlue,
    this.title = "title",
    this.subTitle = "subTitle",
    this.titleSize,
    this.subTitleSize,
    @required this.image,
    this.padding,
    this.subTitleColor = ThemeColor.textColorLight,
    this.titleColor = ThemeColor.textColorLight,
    this.imageWidth
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                      color: titleColor,
                      fontSize: titleSize,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  subTitle,
                  style: TextStyle(
                      color: subTitleColor,
                      fontSize: subTitleSize,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Image.asset(image,
          width: imageWidth,
          fit: BoxFit.fitWidth,
          ),
        ],
      ),
    );
  }
}
