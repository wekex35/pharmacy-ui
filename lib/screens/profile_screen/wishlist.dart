import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';
import 'package:pharmacy/ui/appbar_extended.dart';
import 'package:pharmacy/ui/list_product_item.dart';
import 'package:pharmacy/utils/app_utils.dart';
import 'package:pharmacy/utils/sample_data.dart';

class Wishlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) { 
      final double h = getHeight(constraints);
      final double w = getWidth(constraints);
        _prductList() {
          return Container(
            child: ListView(
                padding: EdgeInsets.all(w * 2),
                children:
                    getProductList /* .expand((element) => getProductList) */ .map<
                        Widget>((e) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: w * 1.5),
                    child: ListProductCard(
                      icon: Icons.delete,
                        item: e,
                        onCardPressed: () {},
                        onButtonPressed: () {},
                        onExtraButton : () {},
                        cardHeigth: h * 24),
                  );
                }).toList()),
          );
        }

      return Scaffold(
        body: Container(
          child: Column(
            children : [
              AppBarExtended(
                isCenter : true,
                title : "Wishlist",
                actions : [
                  IconButton(
                    icon: Icon(Icons.search),
                   onPressed: (){}
                  ),
                  IconButton(
                    icon: Icon(Mdi.cartOutline),
                   onPressed: (){}
                  )
                ]
              ),
Expanded(child: _prductList()) 
            ]
          ),
        ),
      );
     },);
  }
}