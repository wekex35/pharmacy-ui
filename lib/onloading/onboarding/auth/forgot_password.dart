import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:mdi/mdi.dart';
import 'package:pharmacy/onloading/onboarding/auth/otp_screen.dart';
import 'package:pharmacy/ui/botton_icon.dart';
import 'package:pharmacy/ui/formfield_design.dart';
import 'package:pharmacy/ui/success_dialog.dart';
import 'package:pharmacy/utils/app_utils.dart';
import 'package:pharmacy/utils/theme_color.dart';

class ForgotPassword extends StatelessWidget {
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

        _inputField(attribute, labelText, icon) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: height * 1.2),
            child: FormFieldDesign(
              child: TextFormField(
                maxLines: 1,
                decoration: _inputDecoration.copyWith(
                    hintStyle: TextStyle(fontSize: width * 4),
                    hintText: labelText,
                    suffixIcon: Icon(icon)),
              ),
            ),
          );
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
                Text("Forgot Password",
                    style: TextStyle(
                      fontSize: width * 7.5,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(height: height * 2),
                Text(
                    "Enter your Email or Phone number. You will recieve a code to create a new password.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: width * 5,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(height: height * 10),
                _inputField("userid", "Email/Password", Mdi.emailOutline),
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
                              title: "A message Has been Sent !",
                              description:
                                  "You'll shortly recieve a message with Instructions to set up your password.",
                              heigth: height,
                              width: width,
                              onPressed: () {
                                openScreen(context, OtpScreen());
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
