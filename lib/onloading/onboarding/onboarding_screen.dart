import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:flutter/material.dart';

import 'package:pharmacy/onloading/onboarding/auth/login_screen.dart';

import 'package:pharmacy/ui/botton_icon.dart';

import 'package:pharmacy/utils/app_utils.dart';

import 'package:pharmacy/utils/sample_data.dart';
import 'package:pharmacy/utils/theme_color.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentPos = 0;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final width = getWidth(constraints);
        final height = getHeight(constraints);

          _setCurrentPos(int val){
            if(val == 2){
              openScreen(context, LoginScreen());
            }else{
              setState(() {
            currentPos = val;
          });
            }
          
        }

        _button() {
          return ButtonIcon(
            width: width * 90,
            height: height * 6,
            bgColor: ThemeColor.primaryColorLight.withAlpha(150),
            label:  currentPos == 0 ?  "Next" : "Get Started",
            isShowIcon: false,
            radius: width * 20,
            onPressed: () {
              int cPos = currentPos+1;
              print(cPos);
             _setCurrentPos(cPos);
            },
            labelColor: ThemeColor.textColorLight,
            labelSize: width * 4.5,
          );
        }

        _dots(isSelected) {
          return Container(
            // margin:EdgeInsets.symmetric(horizontal: width * 2.5),
            padding: EdgeInsets.all(width),
            height: width * 8,
            width: width * 6,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: isSelected ? Color(0xFF707070) : Colors.transparent,
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: ThemeColor.primaryColorLight,
              ),
            ),
          );
        }

      

        _currentDots() {
          return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            InkWell(onTap: (){
              _setCurrentPos(0);
            }, child: _dots(currentPos == 0)),
            InkWell(onTap: (){
              _setCurrentPos(1);
            }, child: _dots(currentPos == 1)),
            InkWell(onTap: (){
              _setCurrentPos(2);
            }, child: _dots(currentPos == 2))
          ]);
        }

        _topAppDescription() {
        
          if( currentPos != 1)
          
            return Image.asset("assets/images/offers/offers3.png");
          else
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

        _midTitleAndDescription() {
          return Padding(
            padding: EdgeInsets.all(width * 6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  onBoard[currentPos]['title'],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: width * 6,
                      color: ThemeColor.textColorDark,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: height * 1.5,
                ),
                Text(
                  onBoard[currentPos]['description'],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: width * 4,
                  ),
                )
              ],
            ),
          );
        }

        return Scaffold(
          backgroundColor: ThemeColor.primaryColor,
          body: Stack(children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                  margin: EdgeInsets.only(top: height * 10),
                  height: height * 35,
                  child: _topAppDescription()),
            ),
            Container(
              height: height * 65,
              margin: EdgeInsets.only(top: height * 35),
              child: Align(
                child: Arc(
                  edge: Edge.TOP,
                  arcType: ArcType.CONVEY,
                  height: height * 8.3,
                  child: Container(
                    padding: EdgeInsets.only(top: height * 12.5),
                    color: ThemeColor.cardLight,
                    // height: height * 70,
                    width: width * 100,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          _currentDots(),
                          SizedBox(
                            height: height * 4,
                          ),
                          _midTitleAndDescription(),
                          SizedBox(
                            height: height * 4,
                          ),
                          Spacer(),
                          _button(),
                          SizedBox(
                            height: height * 4,
                          ),
                        ]),
                  ),
                ),
              ),
            ),
          ]),
        );
      },
    );
  }
}
