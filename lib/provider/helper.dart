import 'package:flutter/cupertino.dart';

class Helper extends ChangeNotifier{
   int selectIndex = -100;

    void selectSize ( int s){
     selectIndex = s;
     notifyListeners();
   }
}