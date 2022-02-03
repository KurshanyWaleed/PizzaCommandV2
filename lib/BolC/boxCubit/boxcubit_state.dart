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
  // int articleIndex;

  double price = 0;
  static List<dynamic> boxItems = [
    Pizza(price: 0, imagepath: "", title: "title", details: "")
  ];
  BoxState({
    //required this.articleCounter,
    required this.isBox,
    required this.index,
    // required this.articleIndex
  });
}
