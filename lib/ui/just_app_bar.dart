import 'package:flutter/material.dart';
import 'package:pharmacy/utils/app_utils.dart';
import 'package:pharmacy/utils/theme_color.dart';

class JustAppBar extends StatelessWidget {
  final BuildContext context;
  final BoxConstraints constraints;
  final String title;
  final Color backgroundColor;
  final iconButtons;
  final bool isShowBackButton;
  JustAppBar(this.context, this.constraints,
      {this.isShowBackButton = false,
      this.title = "",
      this.backgroundColor,
      this.iconButtons = const <Widget>[]});
  @override
  Widget build(BuildContext context) {
    final width = getWidth(constraints);
    final height = getHeight(constraints);
    _iconButton(icon, onPresed) {
      return Container(
        padding:
            EdgeInsets.symmetric(vertical: height * 3, horizontal: width * 1),
        child: InkWell(
            child: Icon(
              icon,
              size: height * 4,
              color: ThemeColor.textColorLight,
            ),
            onTap: onPresed),
      );
    }

    return AppBar(
      centerTitle: true,
      backgroundColor: backgroundColor,
      leading:  isShowBackButton ? BackButton(color : ThemeColor.textColorLight) :
        IconButton(icon: Icon(Icons.menu,color : ThemeColor.textColorLight), onPressed: () {  },),
   
      
      title: Text(
          title,
          style: TextStyle(
              fontSize: width * 4.5,
              fontWeight: FontWeight.bold,
              color: ThemeColor.textColorLight),
        ),
        actions: iconButtons,
    );
    
    /* Container(
      color: backgroundColor,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          isShowBackButton ? BackButton(color : ThemeColor.textColorLight) :
        IconButton(icon: Icon(Icons.menu,color : ThemeColor.textColorLight), onPressed: () {  },),
   
        Expanded(
           child: Center(
            child: Text(
              title,
              style: TextStyle(
                  fontSize: width * 6,
                  fontWeight: FontWeight.bold,
                  color: ThemeColor.textColorLight),
            ),
          ),
        ),
        
       
        Row(children: this.iconButtons)
      ]),
    ); */
  }
}
