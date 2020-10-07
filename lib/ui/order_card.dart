import 'package:flutter/material.dart';
import 'package:pharmacy/models/product_model.dart';
import 'package:pharmacy/ui/botton_icon.dart';
import 'package:pharmacy/utils/theme_color.dart';

class OrderCard extends StatelessWidget {
  final double width;
  final double height;
  final Color bgColor;

  final double imageHeight;

  final double titleSize;
  final double subTitleSize;

  final Color titleColor;
  final Color subTitleColor;

  final ProductModel item;
  final onButtonPressed;
  final onCardPressed;

  final Color buttonColor; 
  final String buttonLabel;

  OrderCard({
    this.height,
    this.width,
    this.bgColor = ThemeColor.colorSkyBlue,
    this.titleSize,
    this.subTitleSize,
    this.subTitleColor = ThemeColor.textColorDark,
    this.titleColor = ThemeColor.textColorDark,
    this.imageHeight,
    this.item,
    this.onButtonPressed,
    this.onCardPressed, 
    this.buttonColor, 
    this.buttonLabel
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCardPressed,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius : BorderRadius.all(Radius.circular(width * 0.06))
            ),
        child: Container(
          width: width,
          height: height,
          child: Row(
            children: <Widget>[
              Container(
                height: height,
                padding: EdgeInsets.all(width * 0.03),
                width: width * 0.35,
                
                child: Hero(tag: item, child: Image.asset(item.image)),
              ),
              Expanded(
                child: Container(
                  width: width,
                  padding: EdgeInsets.symmetric(
                      horizontal: width * 0.05, vertical: height * 0.05),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        item.name,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: titleColor,
                            fontSize: width * 0.065,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        item.descritpion,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: ThemeColor.textColorLigthGray,
                            fontSize: width * 0.06,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: height * 0.01),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Order ID: ",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: ThemeColor.textColorDark,
                                  fontSize: width * 0.06,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "MRD000124",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: ThemeColor.textColorDark,
                                fontSize: width * 0.06,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "\$" + item.mrp,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: ThemeColor.textColorDark,
                                  fontSize: width * 0.065,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Spacer(),
                      Row(
                        children: <Widget>[
                          Text(
                            "PACKAGE RETURNED",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: ThemeColor.textColorDark,
                              fontSize: width * 0.052,
                            ),
                          ),
                          Spacer(),
                          ButtonIcon(
                            width: width * 0.4,
                            height: height * 0.25,
                            isShowIcon: false,
                            label: buttonLabel,
                            radius: width * 0.2,
                            labelSize: width*0.06,
                            onPressed: onButtonPressed,
                            bgColor: buttonColor,

                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
