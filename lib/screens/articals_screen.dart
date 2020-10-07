import 'package:flutter/material.dart';
import 'package:pharmacy/ui/app_bar_search.dart';
import 'package:pharmacy/ui/articals_card.dart';
import 'package:pharmacy/ui/botton_icon.dart';
import 'package:pharmacy/ui/section_header.dart';
import 'package:pharmacy/ui/top_articals_card.dart';
import 'package:pharmacy/utils/app_utils.dart';
import 'package:pharmacy/utils/sample_data.dart';
import 'package:pharmacy/utils/theme_color.dart';

class ArticalsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        double h = getHeight(constraints);
        double w = getWidth(constraints);

        Widget _categoriesList() {
          return Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: w * 4, top: h * 3),
                child: SectionHeader(
                    leftTitle: "Top Articals", leftFontSize: w * 5),
              ),
              SizedBox(
                height: h,
              ),
              Container(
                height: h * 6,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: getProductList.map<Widget>((e) {
                      int index = getProductList.indexOf(e);
                      bool isLast = index == getProductList.length - 1;
                      bool isFirst = index == 0;
                      print(ThemeColor.colorList[index]);
                      return Padding(
                        padding: EdgeInsets.only(
                            left: isFirst ? w * 4 : w * 2,
                            right: isLast ? w * 4 : 0),
                        child: ButtonIcon(
                          // width: w * 30,
                          height: h * 7,
                          radius: w * 3,
                          bgColor:
                              ThemeColor.colorList[index], // Color(0xff615dd9),
                          icon: Icons.camera_alt,
                          iconSize: h * 4.5,
                          onPressed: () {},
                          label: "hey",
                          labelColor: ThemeColor.textColorLight,
                          labelSize: w * 4.5,
                          isShowIcon: false,
                        ),
                      );
                    }).toList()),
              ),
            ],
          );
        }

        Widget _topArticals() {
          return Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: w * 4, top: h * 3),
                child: SectionHeader(
                    leftTitle: "Top Articals", leftFontSize: w * 5),
              ),
              SizedBox(
                height: h,
              ),
              Container(
                height: h * 25,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: getProductList.map<Widget>((e) {
                      bool isLast = getProductList.indexOf(e) ==
                          getProductList.length - 1;
                      bool isFirst = getProductList.indexOf(e) == 0;
                      return Padding(
                        padding: EdgeInsets.only(
                            left: isFirst ? w * 4 : w * 1,
                            right: isLast ? w * 4 : 0),
                        child: TopArticalsCard(
                          width: w * 65,
                          height: h * 20,
                          item: e,
                          // bgColor: ThemeColor.colorList[index],
                          titleSize: w * 3.2,
                          subTitleSize: w * 3.2,
                          padding: EdgeInsets.symmetric(horizontal: w * 5),
                          imageHeight: h * 13,
                        ),
                      );
                    }).toList()),
              ),
            ],
          );
        }

        Widget _articals() {
          return Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: w * 4, top: h * 3),
                child: SectionHeader(
                    leftTitle: "Recent Post", leftFontSize: w * 5),
              ),
              SizedBox(
                height: h,
              ),
              Container(
                child: Column(
                    children: getProductList.map<Widget>((e) {
                  bool isLast =
                      getProductList.indexOf(e) == getProductList.length - 1;
                  return Padding(
                    padding: EdgeInsets.only(
                        right: h * 1, bottom: isLast ? h * 2 : h),
                    child: ArticalsCard(
                      width: w * 93,
                      height: h * 20,
                      item: e,
                      // bgColor: ThemeColor.colorList[index],
                      titleSize: w * 4,
                      subTitleSize: w * 4,
                      padding: EdgeInsets.symmetric(
                          horizontal: w * 5, vertical: h * 2),
                      imageHeight: h * 13,
                    ),
                  );
                }).toList()),
              ),
            ],
          );
        }

        return Scaffold(
            body: Column(children: [
          AppBarSearch(context, constraints,
           title: "Articles",
              backgroundColor: ThemeColor.primaryColor),
          Expanded(
              child: ListView(padding: EdgeInsets.zero, children: <Widget>[
            _categoriesList(),
            _topArticals(),
            _articals(),
          ]))
        ]));
      },
    );
  }
}
