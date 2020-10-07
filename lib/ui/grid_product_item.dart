import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:flutter/material.dart';
import 'package:pharmacy/models/product_model.dart';
import 'package:pharmacy/utils/app_utils.dart';
import 'package:pharmacy/utils/theme_color.dart';

class GridProductItem extends StatelessWidget {
  final ProductModel item;
  final Function() onCardPressed;

  GridProductItem({
    this.item,
    this.onCardPressed,
  });
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final double width = getWidth(constraints);
        final double height = getHeight(constraints);
        print(height.toString() + " Grid Scale " + width.toString());
        return InkWell(
          onTap: onCardPressed,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: width*5,vertical: height*4),
            width: width * 100,
            height: height * 100,
            decoration: BoxDecoration(
                color: ThemeColor.cardLight,
                borderRadius: BorderRadius.all(Radius.circular(width*5)),
                border: Border.all()),
            child:Stack(
              children : [
                 Container(
              height: height * 98,
              child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      item.image,
                      fit: BoxFit.fitWidth,
                      height: height * 55,
                    ),
                  ),
                  Text(
                    item.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: ThemeColor.textColorDark,
                        fontSize: width * 8,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    item.descritpion,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: ThemeColor.textColorLigthGray,
                        fontSize: width * 8,
                        fontWeight: FontWeight.bold),
                  ),
                
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        (int.parse(item.mrp) - int.parse(item.discounts))
                                .toString() +
                            ".00",
                        style: TextStyle(
                            color: ThemeColor.textColorDark,
                            fontSize: width * 12,
                            fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            "MRP. " + item.mrp,
                            style: TextStyle(
                                color: ThemeColor.textColorLigthGray,
                                fontSize: width * 8,
                                // fontWeight: FontWeight.bold
                                ),
                          ),
                          Text(
                            item.discounts + "% off",
                            style: TextStyle(
                                color: ThemeColor.primaryColorLight,
                                fontSize: width * 10,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
              Diagonal(
                        // edge: Edge.TOP,
                        clipHeight: width * 30,
                        child: Container(
                          color: ThemeColor.danger,
                          width: width * 35,
                          height: width * 30,
                          padding: EdgeInsets.only(
                              right: width * 18, bottom: height * 10),
                          child: Center(
                            child: Transform.rotate(
                              angle: -70,
                              child: Text(
                                'Sale',
                                style: TextStyle(
                                    color: ThemeColor.textColorLight,
                                    fontSize: width * 8,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      )
                  
                
              ]
            ) ),
        );
      },
    );
  }
}
