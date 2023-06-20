import 'package:flutter/foundation.dart';

class CountProvider with ChangeNotifier{
int _count=50;
int get Count=>_count;
void setCount(){
  _count++;
  notifyListeners();
}
}