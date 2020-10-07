import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';
import 'package:pharmacy/models/product_model.dart';
import 'package:pharmacy/ui/components/icons.dart';
import 'package:pharmacy/ui/widgets.dart';
import 'package:pharmacy/utils/app_utils.dart';

class ProductDetails extends StatelessWidget {
  final ProductModel item;

  const ProductDetails({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        print(item.image);
        final double width = getWidth(constraints);
        final double height = getHeight(constraints);
        return Scaffold(
          body: Column(children: [
            AppBarExtended(isCenter: true, title: "Product Details", actions: [
              IconButton(
                  icon: StackIconText(
                    icon: Icon(Mdi.cartOutline),
                  ),
                  onPressed: () {}),
            ]),
            Hero(
              tag: item.id,
              child: Container(
                margin: EdgeInsets.all(width * 10),
                width: width * 50,
                height: width * 50,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(item.image),
                  fit: BoxFit.fitWidth,
                )),
              ),
            ),
            Text(item.descritpion)
          ]),
        );
      },
    );
  }
}
