import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:flutter/material.dart';
import 'package:pharmacy/models/prescription_model.dart';
import 'package:pharmacy/utils/app_utils.dart';
import 'package:pharmacy/utils/theme_color.dart';

class PrescriptionCard extends StatelessWidget {
  final PrescriptionModel item;
  final onButtonPressed;
  final onCardPressed;
  final cardHeigth;
  final onExtraButton;
  final icon;
  PrescriptionCard({
    this.cardHeigth,
    this.item,
    this.onButtonPressed,
    this.onCardPressed,
    this.onExtraButton,
    this.icon,
  });
  final status = ["Submitted","Approved","Denied"];
  final color = [ThemeColor.formFieldBgColor,ThemeColor.success,ThemeColor.danger];

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
                        margin: EdgeInsets.all(width),
                        width: width * 30,
                        
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(width * 8),
                            image: DecorationImage(
                          image: AssetImage(item.image),
                          fit: BoxFit.fitWidth,
                          
                        )
                      ),
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
                                'New',
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
                                          item.title,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color:
                                                  ThemeColor.textColorLigthGray,
                                              fontSize: width * 5.5,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.only(top: height * 4),
                                          child: Row(
                                            children: <Widget>[
                                              Text(
                                                item.date,
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                    color: ThemeColor
                                                        .textColorDark,
                                                    fontSize: width * 5,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(
                                                width: width * 2,
                                              ),
                                              Text(
                                                item.time,
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                  color: ThemeColor
                                                      .textColorLigthGray,
                                                  fontSize: width * 5,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ]),
                                ),
                                InkWell(
                                  onTap: onExtraButton,
                                  child: Container(
                                    margin: EdgeInsets.all(width * 2),
                                    // padding: EdgeInsets.all(width * 1.5),

                                    child: Icon(
                                      icon,
                                      color: ThemeColor.danger,
                                      size: width * 10,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Row(
                              children: <Widget>[
                                Text(
                                  status[item.status],
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color:color[item.status],// ThemeColor.primaryColorLight,
                                    fontSize: width * 5.5,
                                    // fontWeight: FontWeight.bold
                                  ),
                                ),
                                Spacer(),
                                FlatButton(
                                    color: ThemeColor.colorDarkBlue,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: width * 5,
                                        vertical: height),
                                    child: Text(
                                      "View",
                                      style: TextStyle(
                                          color: ThemeColor.textColorLight,
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
