import 'package:flutter/material.dart';
import 'package:pharmacy/screens/products_list/product_details.dart';
import 'package:pharmacy/ui/app_bar_search.dart';
import 'package:pharmacy/ui/order_card.dart';
import 'package:pharmacy/ui/section_header.dart';
import 'package:pharmacy/utils/app_utils.dart';
import 'package:pharmacy/utils/sample_data.dart';
import 'package:pharmacy/utils/theme_color.dart';

class OrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        double h = getHeight(constraints);
        double w = getWidth(constraints);
        _upcoming() {
          return Container(
            child: ListView(
                padding: EdgeInsets.all(w * 3),
                children: getProductList.map<Widget>((e) {
                  bool isLast =
                      getProductList.indexOf(e) == getProductList.length - 1;
                  return Padding(
                    padding: EdgeInsets.only(bottom: isLast ? 0 : w * 1),
                    child: OrderCard(
                      width: w * 65,
                      height: h * 22,
                      item: e,
                      // bgColor: ThemeColor.colorList[index],
                      titleSize: w * 3.5,
                      subTitleSize: w * 2.5,
                      imageHeight: h * 13,
                      onButtonPressed: () {},
                      onCardPressed: () {
                        print(e);
                        openScreen(context, ProductDetails(item :e));
                      },
                      buttonColor: ThemeColor.colorIndigo,
                      buttonLabel: "Track",
                    ),
                  );
                }).toList()),
          );
        }

        _pastOrders() {
          return Container(
            //  padding: EdgeInsets.symmetric(horizontal : w * 3),
            child: ListView(
                padding: EdgeInsets.all(w * 3),
                children: getProductList.map<Widget>((e) {
                  bool isLast =
                      getProductList.indexOf(e) == getProductList.length - 1;
                  return Padding(
                    padding: EdgeInsets.only(bottom: isLast ? 0 : w * 1),
                    child: OrderCard(
                        width: w * 65,
                        height: h * 22,
                        item: e,
                        // bgColor: ThemeColor.colorList[index],
                        titleSize: w * 3.5,
                        subTitleSize: w * 2.5,
                        imageHeight: h * 13,
                        onButtonPressed: () {},
                        onCardPressed: () {},
                        buttonColor: ThemeColor.primaryColorLight,
                        buttonLabel: "Reorder"),
                  );
                }).toList()),
          );
        }

        return DefaultTabController(
            length: 2,
            child: Scaffold(
              body: Column(children: [
                AppBarSearch(
                  context,
                  constraints,
                  backgroundColor: ThemeColor.primaryColorLight,
                  title: "My Orders",
                ),
                Container(
                  color: ThemeColor.primaryColorLight,
                  padding: EdgeInsets.symmetric(
                      horizontal: w * 10, vertical: h * 2.5),
                  height: h * 10,
                  child: TabBar(
                      labelColor: ThemeColor.primaryColorLight,
                      unselectedLabelColor: Colors.white,
                      indicator: BoxDecoration(color: Colors.white),
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: w * 3.3,
                        letterSpacing: 1,
                      ),
                      tabs: [
                        Tab(text: "UPCOMING"),
                        Tab(text: "PAST ORDERS"),
                      ]),
                ),
                Expanded(
                  child: TabBarView(children: [
                    Container(
                      child: _upcoming(),
                    ),
                    Container(
                      child: _pastOrders(),
                    ),
                  ]),
                )
              ]),
            ));
      },
    );
  }
}
