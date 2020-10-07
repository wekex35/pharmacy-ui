import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:mdi/mdi.dart';
import 'package:pharmacy/ui/appbar_extended.dart';
import 'package:pharmacy/ui/botton_icon.dart';
import 'package:pharmacy/ui/formfield_design.dart';
import 'package:pharmacy/ui/section_header.dart';
import 'package:pharmacy/utils/app_utils.dart';
import 'package:pharmacy/utils/theme_color.dart';

// class UploadPrescriptions extends StatelessWidget {
class UploadPrescriptions extends StatelessWidget {
 final GlobalKey<FormBuilderState> _fbkey = new  GlobalKey<FormBuilderState>();
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
            child: Container(
              height: height*25.0,
              child: FormBuilderTextField(
                maxLines: 6,
                attribute: attribute,
                style: TextStyle(
                  fontSize : width*4
                ),
                decoration: _inputDecoration.copyWith(
                    hintText: labelText, 
                    hintStyle: TextStyle(
                      fontSize : width*4
                    ),
                    
                    
                    // suffixIcon: icon
                  ),
              ),
            ),
          );
        }

        return Scaffold(
          body: Column(children: [
            AppBarExtended(title: "Upload Prescription"),
            // Expanded(child: ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: width * 4, vertical: height * 2),
                child: FormBuilder(
                  key: _fbkey,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: height*35,
                        child: FormBuilderImagePicker( 
                        imageHeight: height *25,  
                        imageWidth: width*80,   
                        imageMargin : EdgeInsets.all(width*2),                                          
                          decoration: InputDecoration(                            
                            border : InputBorder.none
                          ),
                          attribute: "image"
                          ),
                      ),
                      Spacer(),
                      SectionHeader(leftTitle: "Description : ",leftFontSize: width * 5),
                      _height,
                      _inputField("description", "Description",
                          Icon(Mdi.key)),
                      _height,
                      _height,
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: width * 4, vertical: height * 2),
                        child: ButtonIcon(
                          width: width * 100,
                          bgColor : ThemeColor.colorOrange,
                          label: "Request for Quotation",
                          labelSize:  width*4,
                          isShowIcon: false,
                          onPressed: () {},
                          height: height*6,
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
