import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';
import 'package:pharmacy/screens/notification/notification.dart';
import 'package:pharmacy/screens/search/main_search_delegates.dart';
import 'package:pharmacy/ui/components/icons.dart';
import 'package:pharmacy/utils/app_utils.dart';
import 'package:pharmacy/utils/theme_color.dart';

class AppBarMain extends StatelessWidget {
  final BuildContext context;
  final BoxConstraints constraints;
  final String title;
  final backgroundColor;
  AppBarMain(this.context, this.constraints,
      {this.backgroundColor = ThemeColor.primaryColorLight, this.title = ""});
  @override
  Widget build(BuildContext context) {
    final width = getWidth(constraints);
    final height = getHeight(constraints);
    _iconButton(icon, onPresed) {
      return IconButton(
        icon: Icon(icon, size: height * 4, color: ThemeColor.textColorLight),
        onPressed: onPresed,
      );

      /*  Container(
        padding: EdgeInsets.symmetric(vertical: height*3,horizontal: width*1),
        child: InkWell(  
            child: Icon(
              icon,
              size: height*4,
              color: ThemeColor.textColorLight,
            ),
            onTap: onPresed),
      ); */
    }

    return AppBar(
      centerTitle: true,
      backgroundColor: backgroundColor,
      leading: _iconButton(Icons.menu, () {}),
      elevation: 0,
      title: Text(
        title,
        style: TextStyle(
            fontSize: width * 4.5,
            fontWeight: FontWeight.bold,
            color: ThemeColor.textColorLight),
      ),
      actions: [
         _iconButton(Icons.search, () {
           
          showSearch(context: context, delegate: MainSearchDelegate());
         }
        ),
        IconButton(
            icon: StackIconText(
              icon: Icon(Mdi.cartOutline),
            ),
            onPressed: () {}),
        IconButton(
            icon: StackIconText(
              icon: Icon(Icons.notifications),
            ),
            onPressed: () {
              openScreen(context, NotificationScreen());
            }),
       
      ],
    );

    /*  Container(
      child: Row(children: [
        _iconButton(Icons.menu, () {}),
        Spacer(),
        
        _iconButton(Icons.search, () {}),
        _iconButton(Icons.shopping_cart, () {}),
        _iconButton(Icons.notifications_none, () {}),
      ]),
    ); */
  }
}
