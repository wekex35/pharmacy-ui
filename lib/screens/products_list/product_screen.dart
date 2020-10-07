
import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';
import 'package:pharmacy/proiders/main_provider.dart';
import 'package:pharmacy/screens/filter_screen/filter_screen.dart';
import 'package:pharmacy/ui/app_bar_search.dart';
import 'package:pharmacy/ui/grid_product_item.dart';
import 'package:pharmacy/ui/list_product_item.dart';
import 'package:pharmacy/utils/app_utils.dart';
import 'package:pharmacy/utils/sample_data.dart';
import 'package:pharmacy/utils/theme_color.dart';
import 'package:provider/provider.dart';

class ProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        double h = getHeight(constraints);
        double w = getHeight(constraints);
        print(h.toString() + " Grid Scale " + w.toString());
        _prductGrid() {
          return Container(
            child: GridView.count(
                padding: EdgeInsets.all(w * 3),
                crossAxisCount: 2,
                crossAxisSpacing: w,
                mainAxisSpacing: h,
                childAspectRatio: 2 / 3,
                children:
                    getProductList /* .expand((element) => getProductList) */ .map<
                        Widget>((e) {
                  return GridProductItem(
                    item: e,
                    onCardPressed: () {},
                  );
                }).toList()),
          );
        }

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
                        item: e,
                        onCardPressed: () {},
                        onButtonPressed: () {},
                        cardHeigth: h * 24),
                  );
                }).toList()),
          );
        }

        return Scaffold(
          body: Column(children: [
            Consumer(
              builder: (BuildContext context, MainProvider mPro, Widget child) {
                return AppBarSearch(
                  
                  context,
                  constraints,
                  backgroundColor: ThemeColor.primaryColorLight,
                 
                  iconButtons: <Widget>[
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: w * 1 ),
                      child: IconButton(
                          icon: Icon(
                            mPro.isGridView ? Mdi.viewList : Mdi.grid,
                            color: ThemeColor.textColorLight,
                             size: w * 4.5,
                          ),
                          onPressed: () {
                            mPro.setGridView(!mPro.isGridView);
                          }),
                    )
                  ],
                );
              },
            ),
            Expanded(
                child: context.select((MainProvider mPro) => mPro.isGridView)
                    ? _prductGrid()
                    : _prductList()),
          ]),
          floatingActionButton: Container(
            width: w*7,
            height: w*7,
            child: FloatingActionButton(
            backgroundColor: ThemeColor.colorOrange,  
            
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (_) => FilterScreen()));
            },
            
            child : Icon(Mdi.filter,
            size: w * 4.5,
            )
            ),
          ),
        );
      },
    );
  }
}
