import 'package:flutter/material.dart';
import 'package:pharmacy/ui/categories_icon.dart';
import 'package:pharmacy/ui/just_app_bar.dart';
import 'package:pharmacy/utils/app_utils.dart';
import 'package:pharmacy/utils/icon_list.dart';
import 'package:pharmacy/utils/sample_data.dart';
import 'package:pharmacy/utils/theme_color.dart';

class AllCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      final double width = getWidth(constraints);
      final double height = getHeight(constraints);

      return Scaffold(
        body: Column(
          children: <Widget>[
            JustAppBar(
              context,
              constraints,
              title: "All Catogories",
              backgroundColor: ThemeColor.primaryColorLight,
              isShowBackButton: true,
            ),
            Expanded(
              child: GridView.count(
                padding: EdgeInsets.symmetric(vertical: height*2,horizontal : width*3),
                  crossAxisCount: 2,
                  childAspectRatio: width * 0.7,
                  crossAxisSpacing: width,
                  mainAxisSpacing: height,
                  children: getCateryList.map((e) {
                    return Container(
                      decoration: BoxDecoration(
                        color: ThemeColor.textColorLigthGray,
                        borderRadius:
                            BorderRadius.all(Radius.circular(width * 3)),
                      ),
                      // color: ThemeColor.textColorLigthGray,
                      padding: EdgeInsets.symmetric(
                          horizontal: width * 2, vertical: height),
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(
                            radius: width * 7,
                            backgroundColor: ThemeColor.primaryColorLight,
                            child: Icon(
                              getIcon(e.icon),
                              size: width * 8,
                              color: ThemeColor.textColorLight,
                            ),
                          ),
                          SizedBox(width : width *2),
                          Text(e.name,
                          style: TextStyle(
                            color: ThemeColor.textColorDark,
                            fontSize: width*4.5,
                            fontWeight: FontWeight.bold
                          ),
                          )
                        ],
                      ),
                    );
                  }).toList()),
            ),
          ],
        ),
      );
    });
  }
}
