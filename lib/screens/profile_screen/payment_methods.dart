import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';
import 'package:pharmacy/ui/appbar_extended.dart';
import 'package:pharmacy/utils/app_utils.dart';

class PaymentMethods extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) { 
      final double height = getHeight(constraints);
      final double width = getWidth(constraints);
      return Scaffold(
        body: Column(
          children : [
            AppBarExtended(
              title : "Payment Methods"
            ),
            Expanded(child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal : width*1.5 ,vertical :height*2),
              itemBuilder: (BuildContext context, int index) {  
                return  Card(
                    elevation: 0.5,
                    child: ListTile(
                    leading : Center(
                      widthFactor: 1,
                      child : Icon(Icons.today)),
                    title: Text("Credit Card"),
                    subtitle: Text("xxx-xxxx-xxxx-8081"),
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
      );
     },);
  }
}