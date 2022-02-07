// ignore_for_file: avoid_print

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

part 'boxcubit_state.dart';

class BoxCubit extends Cubit<BoxState> {
  BoxCubit()
      : super(BoxState(
          indexObjectList: {},
          isBox: false,
          index: 0,
        ));

  void downdatetIndex() {
    state.index < 0
        ? emit(BoxState(
            indexObjectList: state.indexObjectList,
            isBox: state.isBox,
            index: 0,
          ))
        : emit(BoxState(
            isBox: state.isBox,
            index: state.index - 1,
            indexObjectList: state.indexObjectList));
  }

  void updatetIndex() {
    emit(BoxState(
        isBox: state.isBox,
        index: state.index + 1,
        indexObjectList: state.indexObjectList));
  }

  void resetIndex() {
    print('----------------------------------------------------------------');
    // BoxState.boxItems.forEach((e) => print(e[1].title.toString()));
    BoxState.boxItemsToBasket = BoxState.boxItems;
    BoxState.boxItems.clear;
    emit(BoxState(
      isBox: state.isBox,
      index: 0,
      indexObjectList: {},
    ));
  }

  void isBox(bool isbox) {
    emit(BoxState(
      index: state.index,
      isBox: isbox,
      indexObjectList: state.indexObjectList,
    ));
  }

  void getIdexCarousel(dynamic datalist, dynamic objetc) {
    state.indexObjectList[state.index] = datalist.indexOf(objetc);
    print(state.indexObjectList);
    emit(BoxState(
      isBox: state.isBox,
      index: state.index,
      indexObjectList: state.indexObjectList,
    ));
  }

  void addingTotheBasketV2(dynamic obj, int index) {
    // print("the index of the object : " + index.toString());
    // print("the object : " + obj.toString());
    if (BoxState.boxItems.isEmpty) {
      BoxState.boxItems.add(obj);
      //// print(BoxState.boxItems.toString());
      print('first if');
    } else if (BoxState.boxItems.length > index) {
      if (BoxState.boxItems[index] != null) {
        print('hey');
        // BoxState.boxItems.remove(BoxState.boxItems[index]);
        BoxState.boxItems[index] = obj;
        // print(BoxState.boxItems.length.toString());
        // print(BoxState.boxItems.toString());
      } else {
        BoxState.boxItems.add(obj);
        // print(BoxState.boxItems.toString());
      }
    } else {
      BoxState.boxItems.add(obj);
      // print(BoxState.boxItems.toString());
    }

    // print("Liste  : " + BoxState.boxItems.toString());

    emit(BoxState(
        index: state.index,
        isBox: state.isBox,
        indexObjectList: state.indexObjectList));
  }

  // void addingTotheBasket(dynamic obj) {
  //   BoxState.boxItems.add(obj);

  //   // print("Liste  : " + BoxState.boxItems.toString());
  //   print("the title of the object : " +
  //       BoxState.boxItems[BoxState.boxItems.indexOf(obj)].title.toString());
  //   print("the index of the object : " +
  //       BoxState.boxItems.indexOf(obj).toString());
  // }
}
