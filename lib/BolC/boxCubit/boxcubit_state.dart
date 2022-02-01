part of 'boxcubit_cubit.dart';

class BoxState {
  bool isBox;
  int articleIndex;
  String boxName;
  double price = 0;
  static List<dynamic> boxItems = [];
  BoxState(
      {required this.isBox, required this.boxName, required this.articleIndex});
}
