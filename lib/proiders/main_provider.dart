import 'package:flutter/foundation.dart';

class MainProvider extends ChangeNotifier {
  int _bottomSeletNav = 0; 
  bool _gridView = false;

  int get getBottomSeletNav => _bottomSeletNav;
  void setBottomSeletNav(int val){
    _bottomSeletNav = val;
    notifyListeners();
  }

  bool get isGridView => _gridView;
  void setGridView(bool bool){
    _gridView = bool;
    notifyListeners();
  }

}