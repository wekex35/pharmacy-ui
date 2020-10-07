import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';
import 'package:pharmacy/ui/appbar_extended.dart';
import 'package:pharmacy/utils/app_utils.dart';
import 'package:pharmacy/utils/sample_data.dart';
import 'package:pharmacy/utils/theme_color.dart';

class Address extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) { 
      final double height = getHeight(constraints);
      final double width = getWidth(constraints);
      return Scaffold(
        body: Column(
          children : [
            AppBarExtended(
              title : "Address"
            ),
            Expanded(
              child: ListView.builder(
              itemCount: getAddress.length,
              padding: EdgeInsets.symmetric(horizontal : width*1.5 ,vertical :height*2),
              itemBuilder: (BuildContext context, int index) {  
                var d = getAddress[index];
                return  Card(
                    elevation: 0.5,
                    child: ListTile(
                    leading : Center(
                      widthFactor: 1,
                      child : Icon(Icons.place)),
                    title: Text(d.name),
                    subtitle: Text(d.address,
                    maxLines: 2,),
                    trailing:  Center(
                      widthFactor: 1,
                      child : Icon(Mdi.pencil)),
                    
                  ),
                );
              },
              
            ),
            )
          ]
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            
          },
          backgroundColor: ThemeColor.primaryColor,
          child: Icon(Icons.add),
        ),
      );
     },);
  }
}