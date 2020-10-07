import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:pharmacy/ui/botton_icon.dart';
import 'package:pharmacy/ui/just_app_bar.dart';
import 'package:pharmacy/ui/section_header.dart';
import 'package:pharmacy/utils/app_utils.dart';
import 'package:pharmacy/utils/theme_color.dart';

class FilterScreen extends StatelessWidget {
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final height = getHeight(constraints);
        final width = getWidth(constraints);
        _productSection() {
          return FormBuilderRadioGroup(
            wrapRunSpacing: -width * 5,
            decoration: InputDecoration(
              labelText: 'Product Type',
              labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: width * 8,
                  color: ThemeColor.textColorDark),
            ),
            attribute: 'product_type',
            onChanged: (val) {},
            validators: [FormBuilderValidators.required()],
            options: ['Dart', 'Kotlin', 'Java', 'Swift', 'Objective-C']
                .map((lang) => FormBuilderFieldOption(
                      value: lang,
                      child: Text('$lang'),
                    ))
                .toList(growable: false),
          );
        }

        _brandSection() {
          return FormBuilderFilterChip(
            attribute: 'brand',
            decoration: InputDecoration(
              labelText: 'Brands',
              labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: width * 8,
                  color: ThemeColor.textColorDark),
            ),
            // initialValue: 'dabur',
            showCheckmark: false,
            selectedColor: ThemeColor.colorOrange,
            spacing: width * 2,
            runSpacing: -width * 2,
            options: [
              FormBuilderFieldOption(
                value: 'dabur',
                child: Text('Dabur',
                    style: TextStyle(
                        fontSize: width * 5,
                        color: ThemeColor.textColorLight,
                        fontWeight: FontWeight.bold)),
              ),
              FormBuilderFieldOption(
                  value: 'Test 1',
                  child: Text('Test 1',
                      style: TextStyle(
                          fontSize: width * 5,
                          color: ThemeColor.textColorLight,
                          fontWeight: FontWeight.bold))),
              FormBuilderFieldOption(
                  value: 'Test 2',
                  child: Text('Test 2',
                      style: TextStyle(
                          fontSize: width * 5,
                          color: ThemeColor.textColorLight,
                          fontWeight: FontWeight.bold))),
              FormBuilderFieldOption(
                  value: 'Test 3',
                  child: Text('Test 3',
                      style: TextStyle(
                          fontSize: width * 5,
                          color: ThemeColor.textColorLight,
                          fontWeight: FontWeight.bold))),
              FormBuilderFieldOption(
                  value: 'Test 4',
                  child: Text('Test 4',
                      style: TextStyle(
                          fontSize: width * 5,
                          color: ThemeColor.textColorLight,
                          fontWeight: FontWeight.bold))),
            ],
          );
        }

        _ratingSection() {
          return /*    FormBuilderRate(
            decoration: InputDecoration(labelText: "Rate this form"),
            attribute: "rate",
            iconSize: 32.0,
            initialValue: 1,
            max: 5,
          );
           */
              Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: height * 2, bottom: height),
                child: SectionHeader(
                  leftTitle: "Rating",
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Icon(
                  Icons.star,
                  color: ThemeColor.primaryColorLight,
                  size: width * 12,
                ),
                Icon(
                  Icons.star,
                  color: ThemeColor.primaryColorLight,
                  size: width * 12,
                ),
                Icon(
                  Icons.star,
                  color: ThemeColor.primaryColorLight,
                  size: width * 12,
                ),
                Icon(
                  Icons.star,
                  color: ThemeColor.primaryColorLight,
                  size: width * 12,
                ),
                Icon(
                  Icons.star,
                  color: ThemeColor.textColorLigthGray,
                  size: width * 12,
                ),
                Text("4.0 Stars",
                    style: TextStyle(
                        fontSize: width * 6,
                        color: ThemeColor.textColorLigthGray,
                        fontWeight: FontWeight.bold)),
              ])
            ],
          );
        }

        _sortBySection() {
          return FormBuilderRadioGroup(
            wrapDirection: Axis.vertical,
            wrapRunSpacing: -width * 5,
            decoration: InputDecoration(
              labelText: 'Sort by',
              labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: width * 8,
                  color: ThemeColor.textColorDark),
            ),
            attribute: 'sort',
            onChanged: (val) {},
            validators: [FormBuilderValidators.required()],
            options: [
              'Most Popular',
              'Cost Low to High',
              'Cost High to Low',
            ]
                .map((lang) => FormBuilderFieldOption(
                      value: lang,
                      child: Text('$lang',
                          style: TextStyle(
                            fontSize: width * 5,
                            // color: ThemeColor.textColorLigthGray,
                            // fontWeight: FontWeight.bold
                          )),
                    ))
                .toList(growable: false),
          );
        }

        _discountSection() {
          return FormBuilderChoiceChip(
            shape: RoundedRectangleBorder(
                /* side: BorderSide(
                        width: width * 0.5,
                        // color: ThemeColor.textColorLigthGray,
                      ), */
                borderRadius: BorderRadius.circular(width * 10)),
            attribute: 'discount',
            decoration: InputDecoration(
              labelText: 'Discount',
              labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: width * 8,
                  color: ThemeColor.textColorDark),
            ),
            // initialValue: 'dabur',
            // showCheckmark: false,

            selectedColor: ThemeColor.colorOrange,
            spacing: width * 2,
            runSpacing: -width * 2,
            options: [
              FormBuilderFieldOption(
                value: 'dabur',
                child: Text('10 %',
                    style: TextStyle(
                        fontSize: width * 5,
                        color: ThemeColor.textColorLight,
                        fontWeight: FontWeight.bold)),
              ),
              FormBuilderFieldOption(
                  value: 'Test 1',
                  child: Text('20 %',
                      style: TextStyle(
                          fontSize: width * 5,
                          color: ThemeColor.textColorLight,
                          fontWeight: FontWeight.bold))),
              FormBuilderFieldOption(
                  value: 'Test 2',
                  child: Text('30 %',
                      style: TextStyle(
                          fontSize: width * 5,
                          color: ThemeColor.textColorLight,
                          fontWeight: FontWeight.bold))),
              FormBuilderFieldOption(
                  value: 'Test 3',
                  child: Text('40 %',
                      style: TextStyle(
                          fontSize: width * 5,
                          color: ThemeColor.textColorLight,
                          fontWeight: FontWeight.bold))),
              FormBuilderFieldOption(
                  value: 'Test 4',
                  child: Text('50 %',
                      style: TextStyle(
                          fontSize: width * 5,
                          color: ThemeColor.textColorLight,
                          fontWeight: FontWeight.bold))),
            ],
          );
        }

        return Scaffold(body :  Column(
          children: <Widget>[
            JustAppBar(
              context,
              constraints,
              backgroundColor: ThemeColor.primaryColorLight,
              title: "Filters",
              isShowBackButton: true,
              iconButtons: [
                IconButton(icon: Icon(Icons.refresh,
                color: ThemeColor.textColorLight,
                ), onPressed: (){
                        _fbKey.currentState.reset();

                })
              ],
            ),
            Expanded(
              child: FormBuilder(
                key: _fbKey,
                child: ListView(
                  padding: EdgeInsets.symmetric(
                      horizontal: width * 4, vertical: height * 3),
                  children: <Widget>[
                    _productSection(),
                    _brandSection(),
                    _ratingSection(),
                    _sortBySection(),
                    _discountSection(),
                    Padding(
                      padding: EdgeInsets.all(width * 5),
                      child: ButtonIcon(
                        bgColor: ThemeColor.primaryColorLight,
                        labelColor: ThemeColor.textColorLight,
                        label: "Apply Filter",
                        onPressed: () {
                          _fbKey.currentState.save();
                          print(_fbKey.currentState.value);
                        },
                        isShowIcon: false,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
      );
        },
    );
  }
}
