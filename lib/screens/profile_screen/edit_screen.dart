import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:mdi/mdi.dart';
import 'package:pharmacy/ui/botton_icon.dart';
import 'package:pharmacy/ui/formfield_design.dart';
import 'package:pharmacy/ui/section_header.dart';
import 'package:pharmacy/utils/app_utils.dart';
import 'package:pharmacy/utils/sample_data.dart';
import 'package:pharmacy/utils/theme_color.dart';

class EditScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final width = getWidth(constraints);
        final height = getHeight(constraints);
        var _height = SizedBox(height: height * 2);

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
              ],
            ),
          );
        }

        var _inputDecoration = InputDecoration(
            border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
            // border: OutlineInputBorder(),
            contentPadding: EdgeInsets.symmetric(horizontal : width  * 2,vertical : height  * 2.5,)
            
            );
        _phoneNo(attribute, labelText) {
          return Row(
            children: <Widget>[
              Expanded(
                child: FormBuilderCountryPicker(
                  initialValue: 'Germany',
                  attribute: 'country',
                  cursorColor: Colors.black,
                  // style: TextStyle(color: Colors.black, fontSize: 18),
                  priorityListByIsoCode: ['US'],
                  valueTransformer: (value) {
                    
                    return value.isoCode;

                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Country',
                  ),
                  validators: [
                    FormBuilderValidators.required(
                        errorText: 'This field required.'),
                  ],
                ),
              ),
              Expanded(
                child: FormFieldDesign(
                                  child: FormBuilderTextField(
                      maxLines: 1,
                    attribute: attribute,
                    decoration: _inputDecoration.copyWith(
                      hintText: labelText,
                    ),
                  ),
                ),
              ),
            ],
          );
        }

        _inputFieldLeading(attribute, labelText) {
          return FormFieldDesign(
            child: FormBuilderTextField(
              attribute: attribute,
                maxLines: 1,
              decoration: _inputDecoration.copyWith(
                // prefixText: labelText,

                // prefixStyle:
                prefixIcon: Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(labelText + " : ",
                        style: TextStyle(color: ThemeColor.textColorLigthGray))),
              ),
            ),
          );
        }

        _inputField(attribute, labelText, icon) {
          return FormFieldDesign(
            child: FormBuilderTextField(
              maxLines: 1,
              attribute: attribute,
              decoration: _inputDecoration.copyWith(
                hintStyle: TextStyle(
                    fontSize : width*4
                  ),
                  hintText: labelText, suffixIcon: icon),
            ),
          );
        }

        _dropDown(attribute, labelText, items) {
          return FormFieldDesign(
            child: FormBuilderDropdown(
                decoration: _inputDecoration.copyWith(
                  hintText: labelText,
                ),
                hint: Text(labelText),
                attribute: "gender",
                items: items),
          );
        }

        _personalInfo() {
          return Column(children: [
            SectionHeader(
              leftTitle: "PERSONAL INFORMATION",
            ),
            _height,
            _inputField("user_name", "Full Name", Icon(Mdi.accountOutline)),
            _height,
            _dropDown(
                "gender",
                "Gender",
                ["Male", "Female", "Other"].map<DropdownMenuItem<dynamic>>((e) {
                  return DropdownMenuItem(
                    child: Text(e),
                    value: e,
                  );
                }).toList()),
            _height,
            _inputField("dob", "Date of Birth", Icon(Mdi.calendar)),
            _height,
            // _phoneNo("phone_no", "Phone No"),
           
            _height,
            _inputField("email", "Email", Icon(Mdi.emailOutline)),
            _height,
             _inputFieldLeading('+91', "Phone"),
          ]);
        }

        _healthInformation() {
          return Container(
              child: Column(
            children: <Widget>[
              SectionHeader(leftTitle: "Health Information"),
              _height,
              Row(children: [
                Expanded(child: _inputFieldLeading('age', "Age")),
                SizedBox(width: width * 2.5),
                Expanded(child: _inputFieldLeading('blood_group', "Bld Grp"))
              ]),
              _height,
              Row(children: [
                Expanded(child: _inputFieldLeading('height', "Height")),
                SizedBox(width: width * 2.5),
                Expanded(child: _inputFieldLeading('weight', "Weight"))
              ]),
            ],
          ));
          
        }

        _registeredDate(){
          return Container(
            padding: EdgeInsets.symmetric(horizontal : width *2,vertical: height*2),
            width: width*100,
            alignment: Alignment.centerRight,
            child : Text("Registered since Feb 18, 2019",
            )
          );
        }

        _infoList() {
          return Container(
            color: ThemeColor.cardLight,
            child: FormBuilder(
              child: ListView(
                padding: EdgeInsets.symmetric(
                    horizontal: width * 2, vertical: height * 2),
                children: <Widget>[
                  _registeredDate(),
                  _personalInfo(),
                  _height,
                  _height,
                  _healthInformation(),
                  _height,
                  Padding(
                    padding:  EdgeInsets.all(width*4),
                    child: ButtonIcon(
                      label: "Update Profile",
                      isShowIcon: false,
                      radius: width * 30,
                      bgColor: ThemeColor.primaryColorLight,
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
          );
        }

        return Scaffold(
          backgroundColor: ThemeColor.primaryColorLight,
          body: Column(children: [
            AppBar(
              centerTitle: true,
              automaticallyImplyLeading: true,
              backgroundColor: ThemeColor.primaryColorLight,
              title: Text("Edit Profiles"),
              elevation: 0,
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
