import 'package:flutter/material.dart';
import 'package:pharmacy/utils/app_utils.dart';
import 'package:pharmacy/utils/theme_color.dart';

class FormFieldDesign extends StatelessWidget {
  final Widget child;
  FormFieldDesign({
    @required this.child,
  });
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) { 
      final double width = getWidth(constraints);
      final double height = getHeight(constraints); 
      return Container(
    
      padding: EdgeInsets.symmetric(
        horizontal: width,
        // vertical: kDefaultPadding / 8, // 5 top and bottom
      ),
      decoration: BoxDecoration(
        color: ThemeColor.formFieldBgColor.withOpacity(0.15),
        borderRadius: BorderRadius.circular(12),
      ),
      child: child,
    );
  
     },);}
}