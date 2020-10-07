import 'package:flutter/material.dart';
import 'package:pharmacy/utils/app_utils.dart';
import 'package:pharmacy/utils/theme_color.dart';

class AppBarExtended extends StatelessWidget {
  final bool isCenter;
  final String title;
  final List<Widget> actions;
  final bool automaticallyImplyLeading;
  AppBarExtended({
    this.isCenter = true,
     this.title = "title", 
     this.actions = const <Widget>[],
     this.automaticallyImplyLeading = true,
     });
  @override
  Widget build(BuildContext context) {
    return  LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) { 
      final width = getWidth(constraints);
      final heigth = getHeight(constraints);
      return AppBar(
        
              automaticallyImplyLeading: automaticallyImplyLeading,
              iconTheme: IconThemeData(
                size : width*10,
                color : Colors.white
              ),
              backgroundColor: ThemeColor.primaryColorLight,
              title: Text(title,
              style: TextStyle(
                fontSize: width*5
              ),
              ),
              elevation: 0,
              centerTitle: true,
              actions: actions,
            );
     },);
  }
}