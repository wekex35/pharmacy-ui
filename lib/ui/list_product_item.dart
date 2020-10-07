import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:flutter/material.dart';
import 'package:pharmacy/models/product_model.dart';
import 'package:pharmacy/utils/app_utils.dart';
import 'package:pharmacy/utils/theme_color.dart';

class ListProductCard extends StatelessWidget {
  final ProductModel item;
  final onButtonPressed;
  final onCardPressed;
  final cardHeigth;
  final onExtraButton;
  final icon;
  ListProductCard({
    this.cardHeigth,
    this.item,
    this.onButtonPressed,
    this.onCardPressed,
    this.onExtraButton,
    this.icon = Icons.favorite_border,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: cardHeigth,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final double height = getHeight(constraints);
          final double width = getWidth(constraints);
          return InkWell(
            onTap: onCardPressed,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(width * 3))),
              child: Container(
                width: width * 100,
                height: height * 100,
                child: Row(
                  children: <Widget>[
                    Stack(children: <Widget>[
                      Container(
                        width: width * 25,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage(item.image),
                          fit: BoxFit.fitWidth,
                        )),
                      ),
                      Diagonal(
                        // edge: Edge.TOP,
                        clipHeight: width * 30,
                        child: Container(
                          color: ThemeColor.danger,
                          width: width * 18,
                          height: width * 18,
                          padding: EdgeInsets.only(
                              right: width * 10, bottom: height * 20),
                          child: Center(
                            child: Transform.rotate(
                              angle: -45,
                              child: Text(
                                'Sale',
                                style: TextStyle(
                                    color: ThemeColor.textColorLight,
                                    fontSize: width * 3.5,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      )
                    ]),
                    Expanded(
                      child: Container(
                        width: width,
                        padding: EdgeInsets.symmetric(
                            horizontal: width * 2, vertical: height * 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          item.name,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color: ThemeColor.textColorDark,
                                              fontSize: width * 4,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          item.descritpion,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color:
                                                  ThemeColor.textColorLigthGray,
                                              fontSize: width * 3.5,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ]),
                                ),
                                InkWell(
                                  onTap: onExtraButton,
                                  child: Container(
                                    margin: EdgeInsets.all(width),
                                    padding: EdgeInsets.all(width * 1.5),
                                    decoration: BoxDecoration(
                                        border: Border.all(),
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Icon(
                                      icon,
                                      color: ThemeColor.danger,
                                      size: width * 5, 
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: height * 4),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    "\$" +
                                        (double.parse(item.mrp) -
                                                double.parse(item.discounts))
                                            .toString(),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        color: ThemeColor.textColorDark,
                                        fontSize: width * 4.5,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: width * 2,
                                  ),
                                  Text(
                                    "MRP \$" + item.mrp,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      color: ThemeColor.textColorLigthGray,
                                      fontSize: width * 4.5,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Spacer(),
                            Row(
                              children: <Widget>[
                                Text(
                                  item.discounts + "% OFF",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: ThemeColor.primaryColorLight,
                                    fontSize: width * 5.5,
                                    // fontWeight: FontWeight.bold
                                  ),
                                ),
                                Spacer(),
                                OutlineButton(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: width * 5,
                                        vertical: height),
                                    borderSide: BorderSide(
                                      width: width * 0.5,
                                      color: ThemeColor.primaryColorLight,
                                    ),
                                    child: Text(
                                      "Add",
                                      style: TextStyle(
                                          color: ThemeColor.primaryColorLight,
                                          fontSize: width * 5,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    onPressed: onButtonPressed,
                                    shape: new RoundedRectangleBorder(
                                        borderRadius: new BorderRadius.circular(
                                            width * 10))),
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
        },
      ),
    );
  }
}
