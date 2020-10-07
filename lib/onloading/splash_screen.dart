import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';
import 'package:pharmacy/utils/app_utils.dart';
import 'package:pharmacy/utils/theme_color.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final double height = getHeight(constraints);
        final double width = getWidth(constraints);

        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Card(
                              child: Icon(Mdi.plus,
                  size : width * 20,
                  color: ThemeColor.primaryColor,
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  "Medical Pharmacy",
                  style: TextStyle(
                      color: ThemeColor.primaryColor,
                      fontSize: width * 7,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  " App",
                  style: TextStyle(
                      color: ThemeColor.colorDarkBlue,
                      fontSize: width * 7,
                      fontWeight: FontWeight.bold),
                )
              ]),
              Padding(
                padding:  EdgeInsets.all(width),
                child: Text(
                    "Your Slogan goes Here".toUpperCase(),
                    style: TextStyle(
                        color: ThemeColor.primaryColor,
                        fontSize: width * 3,
                    ),
                  ),
              ),
            ],
          ),
        );
      },
    );
  }
}
