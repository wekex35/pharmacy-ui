import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:mdi/mdi.dart';
import 'package:pharmacy/ui/formfield_design.dart';
import 'package:pharmacy/utils/app_utils.dart';
import 'package:pharmacy/utils/theme_color.dart';

class SearchMain extends StatelessWidget {
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
              vertical: height * 2,
            ));

        _inputField(labelText, icon) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: height * 1.2),
            child: Container(
              
              decoration: BoxDecoration(
                color: ThemeColor.cardBg,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Container(
                decoration: BoxDecoration(
                color: ThemeColor.formFieldBgColor.withOpacity(0.25),
                borderRadius: BorderRadius.circular(12),
              ),
                child: TextField(
                  maxLines: 1,
                  decoration: _inputDecoration.copyWith(
                      hintStyle: TextStyle(fontSize: width * 4),
                      hintText: labelText,
                      prefixIcon: Icon(icon)),
                ),
              ),
            ),
          );
        }

        return Scaffold(
          backgroundColor: ThemeColor.primaryColor,
          body: SafeArea(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(width),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: _inputField("Enter Text", Icons.search),
                      )
                    ],
                  ),
                ),
                Expanded(
                    child: Container(
                        color: ThemeColor.cardLight, child: ListView()))
              ],
            ),
          ),
        );
      },
    );
  }
}
