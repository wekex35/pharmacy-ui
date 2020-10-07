import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:mdi/mdi.dart';
import 'package:pharmacy/onloading/onboarding/auth/login_screen.dart';
import 'package:pharmacy/screens/home_screen/home_screen_main.dart';
import 'package:pharmacy/screens/navigation_screen.dart';
import 'package:pharmacy/ui/botton_icon.dart';
import 'package:pharmacy/ui/categories_icon.dart';
import 'package:pharmacy/ui/formfield_design.dart';
import 'package:pharmacy/utils/app_utils.dart';
import 'package:pharmacy/utils/theme_color.dart';

class RegistrationScreen extends StatelessWidget {
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


            _inputField(attribute, labelText, icon) {
          return Padding(
            padding:  EdgeInsets.symmetric(vertical:  height * 1.2),
            child: FormFieldDesign(              
              child: FormBuilderTextField(
                maxLines: 1,
                attribute: attribute,
                decoration: _inputDecoration.copyWith(
                  hintStyle: TextStyle(
                      fontSize : width*4
                    ),
                    hintText: labelText,
                    
                     suffixIcon: Icon(icon)),
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
                height: height * 95,
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
                              height: height * 3,
                            ),
                            Text(
                              "Sign up to browse Online \n Medicine near by location",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: ThemeColor.textColorDark,
                                  fontSize: width * 5),
                            ),
                            SizedBox(
                              height: height * 3,
                            ),
                            _inputField(
                                "full_name", "Full Name", Mdi.accountOutline),
                            _inputField("eamil_address", "Email Address",
                                Mdi.emailOutline),
                            _inputField(
                                "phone", "Phone Number", Mdi.phoneOutline),
                            _inputField(
                                "dob", "Date Of Birth", Mdi.calendar),
                            _inputField(
                                "password", "Password", Icons.visibility),
                            Wrap(
                              direction: Axis.horizontal,
                              children: [
                              Container(
                                
                                child: FormBuilderCheckbox(
                                  leadingInput: true,
                                    attribute: "terms",
                                    decoration: InputDecoration(
                                        border: InputBorder.none),
                                    label: Text(
                                      "By Selecting this and signing up, you agree to our Terms & Policy",
                                      style: TextStyle(
                                        color: ThemeColor.textColorDark,
                                      ),
                                    )),
                              ),
                              
                             
                              
                            ]),
                            _button(
                                label: "Sign Up",
                                w: width * 90,
                                onPressed: () {
                                  openScreen(context, HomeScreenMain());
                                },
                                bgColor: ThemeColor.primaryColor),
                            Padding(
                              padding: EdgeInsets.all(width * 6),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Already have an Account ? ",
                                    style: TextStyle(
                                        color: ThemeColor.textColorDark,
                                        fontSize: width * 4),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      openScreen(context, NavigationScreen());
                                    },
                                    child: Text(
                                      "Login",
                                      style: TextStyle(
                                        fontSize: width * 4,
                                        color: ThemeColor.colorOrange,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
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
