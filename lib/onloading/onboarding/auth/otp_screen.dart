import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:mdi/mdi.dart';
import 'package:pharmacy/onloading/onboarding/auth/otp_screen.dart';
import 'package:pharmacy/screens/home_screen/home_screen_main.dart';
import 'package:pharmacy/screens/navigation_screen.dart';
import 'package:pharmacy/ui/botton_icon.dart';
import 'package:pharmacy/ui/formfield_design.dart';
import 'package:pharmacy/ui/success_dialog.dart';
import 'package:pharmacy/utils/app_utils.dart';
import 'package:pharmacy/utils/theme_color.dart';

class OtpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final double height = getHeight(constraints);
        final double width = getWidth(constraints);

        var _inputDecoration = InputDecoration(
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            // border: OutlineInputBorder(),
            contentPadding: EdgeInsets.symmetric(
              horizontal: width * 2,
              vertical: height * 2.5,
            ));

        _otpEditField(attribute) {
          return Container(
            width: width*15,
            padding: EdgeInsets.symmetric(vertical: height * 1.2),
            child: FormFieldDesign(
              child: TextFormField(
                maxLengthEnforced: true,
                textInputAction: TextInputAction.next,
                maxLength: 1,
                maxLines: 1,
                textAlign: TextAlign.center,
                decoration: _inputDecoration.copyWith(
                    hintStyle: TextStyle(fontSize: width * 6),
                )
              ),
            ),
          );
        }
        _otpField() {
          List<Widget> list = new List();
          for (var i = 0; i < 5; i++) {
            list.add(
              Padding(
                padding:  EdgeInsets.all(width),
                child: _otpEditField(i.toString()),
              )
            );
          }
          return list;
        }

        return Scaffold(
          body: Container(
            padding: EdgeInsets.all(width * 5),
            child: Column(
              children: <Widget>[
                SizedBox(height: height * 10),
                Container(
                  decoration: BoxDecoration(),
                  child: Icon(
                    Mdi.lockOutline,
                    size: width * 18,
                  ),
                ),
                SizedBox(height: height * 2),
                Text("Phone Verification",
                    style: TextStyle(
                      fontSize: width * 7.5,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(height: height * 2),
                Wrap(
                  direction: Axis.horizontal,
                  children: <Widget>[
                    Text(
                       "Enter the 5-digit code you recieved in SMS on (+91) 8796123123",
                        // textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: width * 5,                      
                        )
                        ),
                        Text(
                          "Edit",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: width * 5,  
                          color: ThemeColor.primaryColor                    
                        )
                        ),
                  ],
                ),
                SizedBox(height: height * 10),
                Container(
                  height: 200,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    // scrollDirection: Axis.horizontal, 
                  children: _otpField(),
                  
                  )),
              //  PinEntryTextField(),
                Spacer(),
                ButtonIcon(
                  label: "Confirm",
                  width: width * 90,
                  radius: width * 10,
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return Dialog(
                        insetAnimationCurve: Curves.easeInCubic,
                        insetAnimationDuration: Duration(milliseconds: 1000),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(width*5),
                        ),
                          child: SuccessDialog(
                              title: "Phone verification is successful",
                              description:
                                  "Welcome to the pharma app family",
                              heigth: height,
                              width: width,
                              onPressed: () {
                                openScreen(context, NavigationScreen());
                              }),
                        );
                      },
                    );
                  },
                  labelSize: width * 5,
                  isShowIcon: false,
                  bgColor: ThemeColor.primaryColor,
                ),
                SizedBox(height: height * 10),
              ],
            ),
          ),
        );
      },
    );
  }
}
