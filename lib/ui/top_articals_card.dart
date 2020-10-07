import 'package:flutter/material.dart';
import 'package:pharmacy/models/product_model.dart';
import 'package:pharmacy/utils/theme_color.dart';

class TopArticalsCard extends StatelessWidget {
  final double width;
  final double height;
  final Color bgColor;

  final double imageHeight;

  final double titleSize;
  final double subTitleSize;

  final Color titleColor;
  final Color subTitleColor;

  final EdgeInsets padding;
  final ProductModel item;

  TopArticalsCard({
    this.height = 120,
    this.width = 280,
    this.bgColor = ThemeColor.colorSkyBlue,
    this.titleSize,
    this.subTitleSize,
    this.padding,
    this.subTitleColor = ThemeColor.textColorDark,
    this.titleColor = ThemeColor.textColorDark,
    this.imageHeight,
    this.item,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(       
        
        width: width,
        height: height,
        child: Column(
          children: <Widget>[
            Container(
              height: height * 0.7,
              decoration: BoxDecoration(
                image :DecorationImage(
                  image: AssetImage(item.image),
                   fit: BoxFit.fitWidth,
                )
              ),
              
            ),
            Expanded(
              child: Container(
                width: width,
                 padding: padding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                 
                    Text(
                      item.descritpion,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: ThemeColor.textColorLigthGray,
                          fontSize: subTitleSize,
                          fontWeight: FontWeight.bold),
                    ),
                       Text(
                      item.name,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: titleColor,
                          fontSize: titleSize,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
