import 'package:flutter/material.dart';
import 'package:pharmacy/models/product_model.dart';
import 'package:pharmacy/utils/theme_color.dart';

class ArticalsCard extends StatelessWidget {
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

  ArticalsCard({
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
        child: Row(
          children: <Widget>[
            Container(
              
              width: width*0.25,
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
                  mainAxisAlignment: MainAxisAlignment.start,
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
                    SizedBox(height : height*0.08),
                       Text(
                      item.name,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: titleColor,
                          fontSize: titleSize,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height : height*0.08),
                   Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                        CircleAvatar(
                          radius: height*0.1,
                          child: Image.asset(item.image),
                        ),
                        SizedBox(width: width*0.02,),
                         Expanded(
                                                    child: Text(
                      item.descritpion,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                            color: ThemeColor.textColorLigthGray,
                            fontSize: subTitleSize,
                            fontWeight: FontWeight.bold),
                    ),
                         ),
                     ],),
                   )
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
