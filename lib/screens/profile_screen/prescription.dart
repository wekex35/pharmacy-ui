import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';
import 'package:pharmacy/ui/appbar_extended.dart';
import 'package:pharmacy/ui/botton_icon.dart';
import 'package:pharmacy/ui/list_product_item.dart';
import 'package:pharmacy/ui/prescription_card.dart';
import 'package:pharmacy/utils/app_utils.dart';
import 'package:pharmacy/utils/sample_data.dart';
import 'package:pharmacy/utils/theme_color.dart';

class Prescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) { 
      final double w = getWidth(constraints);
      final double h = getHeight(constraints);

      _prescriptionList(){
                  return Container(
            child: ListView(
                padding: EdgeInsets.all(w * 2),
                children:
                    getPrescriptionList /* .expand((element) => getProductList) */ .map<
                        Widget>((e) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: w * 1.5),
                    child: PrescriptionCard(
                      icon: Icons.delete_outline,
                        item: e,
                        onCardPressed: () {},
                        onButtonPressed: () {},
                        onExtraButton : () {},
                        cardHeigth: h * 21),
                  );
                }).toList()),
          );;
      }
      return Scaffold(
        body: Column(
          children : [
            AppBarExtended(
              title: "My Prescription",
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: (){}
                 )
              ],
            ),
           Expanded(child: _prescriptionList()),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal : w * 7,vertical :  h * 3),
              decoration : BoxDecoration(
                color: ThemeColor.cardBg,
                borderRadius: BorderRadius.only(topLeft :Radius.circular(w * 5) ,topRight : Radius.circular(w*5))
                ),
                child:  ButtonIcon(
                  isShowIcon: false,
                  radius: w*20,
                  bgColor: ThemeColor.primaryColorLight,
                  onPressed: (){},
                ),
            )
          ]
        ),
      );
     },);
  }
}