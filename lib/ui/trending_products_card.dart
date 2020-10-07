import 'package:flutter/material.dart';
import 'package:pharmacy/models/product_model.dart';
import 'package:pharmacy/utils/theme_color.dart';

class TrendingProductCard extends StatelessWidget {
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

  TrendingProductCard({
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
    return Container(
      padding: padding,
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: ThemeColor.cardLight,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border.all()),
      child: Column(
        children: <Widget>[
          Container(
            height: height*0.7,
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    item.image,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(item.discounts+" off",
                                style: TextStyle(
                        color: ThemeColor.primaryColorLight,
                        fontSize: width*0.06,
                        fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text((int.parse(item.mrp) - int.parse(item.discounts))
                            .toString()+".00",
                                    style: TextStyle(
                        color: titleColor,
                        fontSize: width*0.1,
                        fontWeight: FontWeight.bold),
                            ),
                        Text("MRP. " + item.mrp,
                        style: TextStyle(
                        color: ThemeColor.textColorLigthGray,
                        fontSize: width*0.06,
                        fontWeight: FontWeight.bold),
                        ),
                      ],
                  ),
                    ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    item.name,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: titleColor,
                        fontSize: titleSize,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    item.descritpion,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: ThemeColor.textColorLigthGray,
                        fontSize: subTitleSize,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
