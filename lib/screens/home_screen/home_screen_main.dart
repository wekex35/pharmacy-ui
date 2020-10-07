import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';
import 'package:pharmacy/screens/all_categories/all_categories.dart';
import 'package:pharmacy/screens/products_list/product_screen.dart';
import 'package:pharmacy/screens/upload_prescription/upload_prescription.dart';
import 'package:pharmacy/ui/botton_icon.dart';
import 'package:pharmacy/ui/categories_icon.dart';
import 'package:pharmacy/ui/offers_card.dart';
import 'package:pharmacy/ui/section_header.dart';
import 'package:pharmacy/ui/trending_products_card.dart';
import 'package:pharmacy/utils/app_utils.dart';
import 'package:pharmacy/utils/icon_list.dart';
import 'package:pharmacy/utils/sample_data.dart';
import 'package:pharmacy/utils/theme_color.dart';
import 'package:pharmacy/ui/app_bar_main.dart';

class HomeScreenMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final width = getWidth(constraints);
        final height = getHeight(constraints);

        _button() {
          return ButtonIcon(
            width: width * 90,
            height: height * 7,
            bgColor: Colors.orange[800],
            icon: Icons.camera_alt,
            iconSize: height * 4.5,
            onPressed: () {
              openScreen(context, UploadPrescriptions());
            },
            labelColor: ThemeColor.textColorLight,
            labelSize: width * 4.5,
          );
        }

        _topAppDescription() {
          return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Icon(
                      Icons.add_shopping_cart,
                      size: height * 10,
                      color: ThemeColor.textColorLight,
                    ),
                    Text(
                      "BEST ONLINE",
                      style: TextStyle(
                          color: ThemeColor.textColorLight,
                          fontSize: width * 5),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.1,
                ),
                Text(
                  "MEDICINE",
                  style: TextStyle(
                      color: ThemeColor.textYellow,
                      fontSize: width * 10,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 2),
                ),
                SizedBox(
                  height: height * 0.1,
                ),
                Text(
                  "DELIVERY SERVICES",
                  style: TextStyle(
                      color: ThemeColor.textColorLight, fontSize: width * 5),
                )
              ]);
        }

        _categoryList() {
          int index = 0;
          return Container(
            height: height * 13,
            child: ListView(
                padding: EdgeInsets.only(left: width * 2),
                scrollDirection: Axis.horizontal,
                children: getCateryList.map((e) {
                  index += 1;
                  if (index == 6) {
                    index = 0;
                  }
                  return CategoriesIcons(
                    bgRadius: height * 3.5,
                    bgColor: ThemeColor.colorList[index],
                    iconSize: height * 4.5,
                    labelSize: width * 3,
                    label: e.name,
                    icon: getIcon(e.icon),
                    gapHeight: height * 0.5,
                    padding: EdgeInsets.all(width * 1),
                    margin: EdgeInsets.all(width * 1),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => AllCategories()));
                    },
                  );
                }).toList()),
          );
        }

        _dealsOfferSection() {
          int index = 6;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: width * 5, top: height * 2),
                child: SectionHeader(
                    leftTitle: "Speacial Deals & Offers",
                    leftFontSize: width * 5),
              ),
              SizedBox(
                height: height,
              ),
              Padding(
                padding: EdgeInsets.only(left: width * 5),
                child: Text(
                  "Get Special discount and offers on Medicine",
                  style: TextStyle(
                      color: ThemeColor.textColorLigthGray,
                      fontSize: width * 3),
                ),
              ),
              SizedBox(
                height: height * 2,
              ),
              Container(
                height: height * 20,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: getOffersList.map<Widget>((e) {
                      index -= 1;
                      if (index == -1) {
                        index = 6;
                      }
                      bool isLast =
                          getOffersList.indexOf(e) == getOffersList.length - 1;
                      return Padding(
                        padding: EdgeInsets.only(
                            left: width * 4, right: isLast ? width * 4 : 0),
                        child: OffersCard(
                          width: width * 85,
                          image: e.image,
                          title: e.offers,
                          bgColor: ThemeColor.colorList[index],
                          subTitle: e.header,
                          titleSize: width * 6,
                          subTitleSize: width * 5,
                          padding: EdgeInsets.symmetric(horizontal: width * 5),
                          imageWidth: width * 30,
                        ),
                      );
                    }).toList()),
              )
            ],
          );
        }

        _dealsTrendingSection() {
          int index = 6;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                    right: width * 5, left: width * 5, top: height * 2),
                child: SectionHeader(
                  leftTitle: "Trending Products",
                  leftFontSize: width * 5,
                  rigthTitle: "View all",
                  onPressed: (){
                    openScreen(context, ProductScreen());
                  },
                ),
              ),
              SizedBox(
                height: height * 2,
              ),
              Container(
                height: height * 25,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: getProductList.map<Widget>((e) {
                      index -= 1;
                      if (index == -1) {
                        index = 6;
                      }
                      bool isLast = getProductList.indexOf(e) ==
                          getProductList.length - 1;
                      return Padding(
                        padding: EdgeInsets.only(
                            left: width * 4, right: isLast ? width * 4 : 0),
                        child: TrendingProductCard(
                          width: width * 65,
                          height: height * 20,
                          item: e,
                          bgColor: ThemeColor.colorList[index],
                          titleSize: width * 3.5,
                          subTitleSize: width * 2.5,
                          padding: EdgeInsets.symmetric(horizontal: width * 5),
                          imageHeight: height * 13,
                        ),
                      );
                    }).toList()),
              )
            ],
          );
        }

        return Scaffold(
          backgroundColor: ThemeColor.primaryColor,
          body: Column(
            children: [
              AppBarMain(context, constraints),
              Expanded(
                child: ListView(
                  children: <Widget>[
                    Stack(children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                            height: height * 35, child: _topAppDescription()),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: height * 20),
                        child: Align(
                          child: Arc(
                            edge: Edge.TOP,
                            arcType: ArcType.CONVEY,
                            height: height * 8.3,
                            child: Container(
                              padding: EdgeInsets.only(top: height * 12.5),
                              color: ThemeColor.cardLight,
                              // height: height * 70,
                              width: width * 100,
                              child: Column(children: [
                                _button(),
                                SizedBox(
                                  height: height * 4,
                                ),
                                _categoryList(),
                                _dealsTrendingSection(),
                                _dealsOfferSection(),
                                SizedBox(
                                  height: height * 4,
                                ),
                              ]),
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ],
                ),
              ),
            ],
          ),
         );
      },
    );
  }
}
