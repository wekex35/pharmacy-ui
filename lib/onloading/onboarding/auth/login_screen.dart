import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:mdi/mdi.dart';
import 'package:pharmacy/onloading/onboarding/auth/registration_screen.dart';
import 'package:pharmacy/screens/home_screen/home_screen_main.dart';
import 'package:pharmacy/screens/navigation_screen.dart';
import 'package:pharmacy/ui/botton_icon.dart';
import 'package:pharmacy/ui/categories_icon.dart';
import 'package:pharmacy/ui/formfield_design.dart';
import 'package:pharmacy/utils/app_utils.dart';
import 'package:pharmacy/utils/theme_color.dart';

import 'forgot_password.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final width = getWidth(constraints);
        final height = getHeight(constraints);

        _button({onPressed, label, bgColor, w, icon, isShowIcon = false}) {
          return ButtonIcon(
            width: w,
            height: height * 6,
            bgColor: bgColor,
            label: label,
            isShowIcon: isShowIcon,
            icon: icon,
            radius: width * 20,
            onPressed: onPressed,
            labelColor: ThemeColor.textColorLight,
            labelSize: width * 4.5,
            iconSize: width * 8,
          );
        }

        _topAppDescription() {
          return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Icon(
                      Icons.add_shopping_cart,
                      size: height * 12,
                      color: ThemeColor.textColorLight,
                    ),
                    Text(
                      "BEST ONLINE",
                      style: TextStyle(
                          color: ThemeColor.textColorLight,
                          fontSize: width * 8),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.1,
                ),
                Text(
                  "MEDICINE",
                  style: TextStyle(
                      color: ThemeColor.textYellow,
                      fontSize: width * 16,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 2),
                ),
                SizedBox(
                  height: height * 0.1,
                ),
                Text(
                  "DELIVERY SERVICES",
                  style: TextStyle(
                      color: ThemeColor.textColorLight, fontSize: width * 8),
                )
              ]);
        }

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

        _inputFieldLeading(
          attribute,
          labelText,
          /* icon */
        ) {
          return Container(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            width: width * 95,
            child: FormFieldDesign(
              child: FormBuilderTextField(
                attribute: attribute,
                maxLines: 1,
                decoration: _inputDecoration.copyWith(hintText: labelText
                    // prefixText: labelText,

                    // prefixStyle:
                    /*   prefixIcon: Icon(
                icon,
                size: width * 7.5,
              ) */
                    ),
              ),
            ),
          );
        }

        return Scaffold(
          backgroundColor: ThemeColor.primaryColor,
          body: SingleChildScrollView(
                      child: Stack(children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                    margin: EdgeInsets.only(top: height * 5),
                    height: height * 35,
                    child: _topAppDescription()),
              ),
              Container(
                height: height * 78,
                margin: EdgeInsets.only(top: height * 35),
                decoration: BoxDecoration(
                    color: ThemeColor.cardBg,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(width * 5),
                        topRight: Radius.circular(width * 5))),
                child: Align(
                  child: FormBuilder(
                    child: Padding(
                      padding: EdgeInsets.all(width * 5),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                              SizedBox(
                              height: height * 4,
                            ),
                              Text(
                                    "Login to Continue",
                                    style: TextStyle(
                                        color: ThemeColor.primaryColorLight,
                                        fontSize: width * 6),
                                  ),
                            SizedBox(
                              height: height * 4,
                            ),
                            _inputFieldLeading("userid", "Email Address"),
                            _inputFieldLeading("Password", "Password"),
                            Row(children: [
                              Container(
                                width: 50,
                                child: FormBuilderCheckbox(
                                    attribute: "remember",
                                    decoration:
                                        InputDecoration(border: InputBorder.none),
                                    label: Text(
                                      "",
                                      style: TextStyle(
                                        color: ThemeColor.textColorDark,
                                      ),
                                    )),
                              ),
                              Text(
                                "Remember Me",
                                style: TextStyle(
                                  color: ThemeColor.textColorDark,
                                ),
                              ),
                              Spacer(),
                              InkWell(
                                onTap: (){
                                  openScreen(context, ForgotPassword());
                                },
                                child: Text(
                                  "Forgot Password ?",
                                  style: TextStyle(
                                      fontSize: width * 4,
                                      color: ThemeColor.colorDarkBlue),
                                ),
                              ),
                            ]),
                            _button(
                                label: "Sign In",
                                w: width * 90,
                                onPressed: () {
                                  openScreen(context, NavigationScreen());
                                },
                                bgColor: ThemeColor.primaryColor),
                            Padding(
                              padding: EdgeInsets.all(width * 6),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Don't have an account ? ",
                                    style: TextStyle(
                                        color: ThemeColor.textColorDark,
                                        fontSize: width * 4),
                                  ),
                                   InkWell(
                                    onTap: () {
                                      openScreen(context, RegistrationScreen());
                                    },
                                    child: Text(
                                      "Sign up",
                                      style: TextStyle(
                                        fontSize: width * 4,
                                        color: ThemeColor.colorOrange,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(width * 6),
                              child: Text(
                                "Or Sign in with",
                                style: TextStyle(
                                  fontSize: width * 4,
                                  color: ThemeColor.textColorLigthGray,
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                _button(
                                    icon: Mdi.facebook,
                                    isShowIcon: true,
                                    label: "Facebook",
                                    w: width * 40,
                                    onPressed: () {},
                                    bgColor: ThemeColor.colorDarkBlue),
                                SizedBox(width: width * 5),
                                _button(
                                    icon: Mdi.google,
                                    isShowIcon: true,
                                    label: "Google",
                                    w: width * 40,
                                    onPressed: () {},
                                    bgColor: ThemeColor.colorOrange),
                              ],
                            ),
                            SizedBox(
                              height: height * 4,
                            ),
                          ]),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        );
      },
    );
  }
}
