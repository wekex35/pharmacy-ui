import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:mdi/mdi.dart';
import 'package:pharmacy/ui/appbar_extended.dart';
import 'package:pharmacy/ui/botton_icon.dart';
import 'package:pharmacy/ui/formfield_design.dart';
import 'package:pharmacy/utils/app_utils.dart';
import 'package:pharmacy/utils/theme_color.dart';

class ChangePassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final double height = getHeight(constraints);
        final double width = getWidth(constraints);
        var _height = SizedBox(height: height * 2);
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
          return FormFieldDesign(
            child: FormBuilderTextField(
              maxLines: 1,
              attribute: attribute,
              decoration: _inputDecoration.copyWith(
                  hintText: labelText, 
                  hintStyle: TextStyle(
                    fontSize : width*4
                  ),
                  suffixIcon: icon),
            ),
          );
        }

        return Scaffold(
          body: Column(children: [
            AppBarExtended(title: "Change Password"),
            // Expanded(child: ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: width * 4, vertical: height * 2),
                child: FormBuilder(
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor : ThemeColor.cardBg,
                        radius : width*30,
                        child : Icon(
                          Mdi.accountKey,
                          size: width*40,
                          color: ThemeColor.primaryColor,
                        )
                      ),
                      Spacer(),
                      _inputField("current_password", "Current Password",
                          Icon(Mdi.key)),
                      _height,
                      _inputField("password", "Password", Icon(Mdi.key)),
                      _height,
                      _inputField("confirm_password", "Confirm Password",
                          Icon(Mdi.key)),
                      _height,
                      _height,
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: width * 4, vertical: height * 2),
                        child: ButtonIcon(
                          width: width * 100,
                          label: "Change Password",
                          bgColor: ThemeColor.primaryColorLight,
                          labelSize:  width*4,
                          isShowIcon: false,
                          onPressed: () {},
                          height: height*5,
                          radius: width*10,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ]),
        );
      },
    );
  }
}
