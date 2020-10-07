
import 'package:flutter/material.dart';

double getWidth(BoxConstraints constraints){
  return constraints.maxWidth*0.01; // 1 % of  Width
}

double getHeight(BoxConstraints constraints){
    return constraints.maxHeight*0.01; // 1 % of  height
}

double getScreenRatio(BoxConstraints constraints){
  final height = constraints.maxHeight;
  final width = constraints.maxWidth;
  double ratio = 0;
    if(height > width)
      ratio = height/width;
    else 
       ratio = width/height;
    print("object "+ratio.toString());
    return ratio; 
}

openScreen(BuildContext context,page){
  Navigator.push(context, MaterialPageRoute(builder: (_) => page));
}