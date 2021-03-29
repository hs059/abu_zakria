import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class AppProvider extends ChangeNotifier {
  int indexScreen = 0;
  setIndexScreen(int value) {
    this.indexScreen = value;
    print(indexScreen);
    notifyListeners();
  }
}
