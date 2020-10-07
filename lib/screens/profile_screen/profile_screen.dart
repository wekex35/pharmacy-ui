import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';
import 'package:pharmacy/screens/notification/notification.dart';
import 'package:pharmacy/screens/profile_screen/payment_methods.dart';
import 'package:pharmacy/screens/profile_screen/prescription.dart';
import 'package:pharmacy/screens/profile_screen/wishlist.dart';
import 'package:pharmacy/ui/botton_icon.dart';
import 'package:pharmacy/ui/components/icons.dart';
import 'package:pharmacy/utils/app_utils.dart';
import 'package:pharmacy/utils/sample_data.dart';
import 'package:pharmacy/utils/theme_color.dart';

import 'addresses.dart';
import 'change_password.dart';
import 'edit_screen.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final width = getWidth(constraints);
        final height = getHeight(constraints);
        _accountName() {
          return Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width * 4,
              vertical: height * 1.5,
            ),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    right: width * 2,
                  ),
                  child: CircleAvatar(
                    radius: width * 8,
                  ),
                ),
                Expanded(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Text(
                        "Annie Duffy",
                        style: TextStyle(
                            fontSize: width * 5,
                            color: ThemeColor.textColorLight,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Annioduffy@gmail.com",
                        style: TextStyle(
                          fontSize: width * 3.5,
                          color: ThemeColor.textColorLight,
                        ),
                      )
                    ])),
                Container(
                  height: height * 5,
                  child: ButtonIcon(
                    onPressed: () {
                      openScreen(context, EditScreen());
                    },
                    isShowIcon: false,
                    label: "Edit",
                    radius: width * 20,
                    labelSize: width * 4.5,
                    width: width * 20,
                  ),
                )
              ],
            ),
          );
        }

        switchScreen(String type) {
          print(type);
          switch (type) {
            case "wishlist":
              openScreen(context, Wishlist());
              break;
            case 'prescription':
              openScreen(context, Prescription());
              break;
            case 'payment_method':
              openScreen(context, PaymentMethods());
              break;
            case 'address':
              openScreen(context, Address());
              break;
            case "invites":
              print("Invites");
              // openScreen(context, Wishlist());
              break;
            case "password":
              openScreen(context, ChangePassword());
              break;
            case "orders":
              openScreen(context, Wishlist());
              break;
            case 'password':
              openScreen(context, Prescription());
              break;
            default:
          }
        }

        _infoList() {
          return Container(
            color: ThemeColor.cardLight,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(
                  vertical: height * 2, horizontal: width * 2),
              itemCount: getSettingList.length,
              separatorBuilder: (BuildContext context, int index) => Divider(),
              itemBuilder: (BuildContext context, int index) {
                var e = getSettingList[index];
                return e.title == "banner"
                    ? Container(
                        color: ThemeColor.primaryColorLight,
                        height: height * 10,
                      )
                    : Material(
                        child: InkWell(
                          onTap: () {
                            switchScreen(e.type);
                          },
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: width * 2),
                                child: Icon(
                                  Mdi.cartOutline,
                                  size: width * 8,
                                ),
                              ),
                              Text(
                                e.title,
                                style: TextStyle(fontSize: width * 5),
                              ),
                              Spacer(),
                              Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: width) * 2,
                                child: Icon(Icons.arrow_forward_ios),
                              ),
                            ],
                          ),
                        ),
                      );
              },
            ),
          );
        }

        return Scaffold(
          backgroundColor: ThemeColor.primaryColorLight,
          body: Column(children: [
            AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: ThemeColor.primaryColorLight,
              title: Text("Profiles"),
              elevation: 0,
              actions: <Widget>[
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
                    })
              ],
            ),
            _accountName(),
            Expanded(
              child: _infoList(),
            )
          ]),
        );
      },
    );
  }
}
