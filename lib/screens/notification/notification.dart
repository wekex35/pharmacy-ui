import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';
import 'package:pharmacy/ui/appbar_extended.dart';
import 'package:pharmacy/utils/app_utils.dart';
import 'package:pharmacy/utils/theme_color.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final double height = getHeight(constraints);
        final double width = getWidth(constraints);
        return Scaffold(
          body: Column(children: [
            AppBarExtended(title: "Notifications"),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.symmetric(
                    horizontal: width * 1.5, vertical: height * 2),
                itemBuilder: (BuildContext context, int index) {
                  Random random = new Random();
int randomNumber = random.nextInt(6);
                  return Card(
                    elevation: 0.1,
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: width * 5,
                         backgroundColor: ThemeColor.colorList[randomNumber],
                        child: Icon(
                          Mdi.cartOutline,
                          size: width * 6.5,
                          color: Colors.white,
                        ),
                      ),
                      title: Row(
                        children: <Widget>[
                          Text("Credit Card"),
                          Spacer(),
                          Text(
                            "8:30pm",
                            style: TextStyle(
                              fontWeight: FontWeight.w200,
                              fontSize: width * 4,
                            ),
                          ),
                        ],
                      ),
                      subtitle: Text(
                        "There are many variations of passages of Lorem Ipsum available, but the majority have",
                      ),
                      // trailing: Center(widthFactor: 1, child: Icon(Mdi.pencil)),
                    ),
                  );
                },
              ),
            )
          ]),
        );
      },
    );
  }
}
