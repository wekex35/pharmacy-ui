import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';
import 'package:pharmacy/proiders/main_provider.dart';
import 'package:pharmacy/screens/articals_screen.dart';
import 'package:pharmacy/screens/home_screen/home_screen_main.dart';
import 'package:pharmacy/utils/app_utils.dart';
import 'package:pharmacy/utils/theme_color.dart';
import 'package:provider/provider.dart';

import 'order_screen/orders_screen.dart';
import 'profile_screen/profile_screen.dart';

class NavigationScreen extends StatefulWidget {
  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    // _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    // _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          double h = getHeight(constraints);
          double w = getWidth(constraints);
          return Scaffold(
            body: Consumer(
              builder: (BuildContext context, MainProvider mPro, Widget child) {
                return getScreen(mPro.getBottomSeletNav);
              },
            ),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              unselectedItemColor: ThemeColor.textColorLigthGray,
              selectedItemColor: ThemeColor.primaryColorLight,
              iconSize: w * 8,
              selectedLabelStyle: TextStyle(fontSize: w * 2.8),
              unselectedLabelStyle: TextStyle(fontSize: w * 2.8),
              currentIndex:
                  context.select((MainProvider mPro) => mPro.getBottomSeletNav),
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Mdi.homeOutline),
                  title: Text('Home'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Mdi.newspaper,
                  ),
                  title: Text('Articals'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Mdi.calendarCheck),
                  title: Text('My Orders'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Mdi.messageOutline),
                  title: Text('Message'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Mdi.accountOutline),
                  title: Text('Profile'),
                ),
              ],

              // currentIndex: _selectedIndex,
              // selectedItemColor: Colors.amber[800],
              onTap: (val) {
                context.read<MainProvider>().setBottomSeletNav(val);
              },
            ),
          );
        },
      ),
    );
  }

  Widget getScreen(int getBottomSeletNav) {
    switch (getBottomSeletNav) {
      case 0:
        return HomeScreenMain();
      case 1:
        return ArticalsScreen();
      case 2:
        return OrderScreen();
      case 4:
        return ProfileScreen();
      default:
        return HomeScreenMain();
    }
  }

}
