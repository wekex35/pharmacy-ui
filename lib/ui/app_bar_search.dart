import 'package:flutter/material.dart';
import 'package:pharmacy/ui/appbar_extended.dart';
import 'package:pharmacy/utils/app_utils.dart';
import 'package:pharmacy/utils/theme_color.dart';

class AppBarSearch extends StatelessWidget {
  final BuildContext context;
  final BoxConstraints constraints;
  final String title;
  final Color backgroundColor;
  final iconButtons;
  AppBarSearch(this.context, this.constraints,
      {this.title = "",
      this.backgroundColor,
      this.iconButtons = const <Widget>[]});
  @override
  Widget build(BuildContext context) {
    final width = getWidth(constraints);
    final height = getHeight(constraints);
    _iconButton(icon, onPresed) {
      return IconButton(
        icon: Icon(icon, size: height * 4, color: ThemeColor.textColorLight),
        onPressed: onPresed,
      );
    }

    return AppBar(
      centerTitle: true,
      backgroundColor: backgroundColor,
      leading: _iconButton(Icons.menu, () {}),
      
      title: Text(
          title,
          style: TextStyle(
              fontSize: width * 4.5,
              fontWeight: FontWeight.bold,
              color: ThemeColor.textColorLight),
        ),
        actions: iconButtons,
    );
    
    /*  Container(
      color: backgroundColor,
      child: Row(children: [
      
        Spacer(),
        
        Spacer(),
        _iconButton(Icons.search, () {}),
        Row(children: this.iconButtons)
      ]),
    ); */
  }
}
