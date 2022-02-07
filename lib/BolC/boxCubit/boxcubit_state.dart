part of 'boxcubit_cubit.dart';

class BoxState {
  static var liste = ["pizza", "pizza", "sandwich", "sandwich", "boissan"];
  // static Map<int, Map<dynamic, int>> boxdetails = {
  //   1: {Pizza: 2},
  //   2: {Sandwich: 2},
  //   3: {Boissan: 1}
  // };
  bool isBox;
  //int articleCounter;

  int index;

  Map<int, int> indexObjectList = {0: 0};
  // int articleIndex;

  double price = 0;
  static List<dynamic> boxItems = [];
  static List<dynamic> boxItemsToBasket = [];
  BoxState({
    //required this.articleCounter,
    required this.isBox,
    required this.index,
    required this.indexObjectList,

    // required this.articleIndex
  });
}
