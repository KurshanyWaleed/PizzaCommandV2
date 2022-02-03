import 'package:bloc/bloc.dart';
import 'package:j_pizza_v2/data/pizza.dart';

part 'boxcubit_state.dart';

class BoxCubit extends Cubit<BoxState> {
  BoxCubit()
      : super(BoxState(
          isBox: false,
          index: 0,
        ));

  void downdatetIndex() {
    state.index < 0
        ? emit(BoxState(
            isBox: state.isBox,
            index: 0,
          ))
        : emit(BoxState(
            isBox: state.isBox,
            index: state.index - 1,
          ));
    print(state.index);
  }

  void updatetIndex() {
    emit(BoxState(
      isBox: state.isBox,
      index: state.index + 1,
    ));
  }

  void resetIndex() {
    emit(BoxState(
      isBox: state.isBox,
      index: 0,
    ));
  }
  // void initIndex(int value) {
  //   state.index = value;
  //   print("index" + state.index.toString());
  //   emit(BoxState(
  //       articleCounter: state.articleCounter,
  //       isBox: state.isBox,
  //       index: state.index,
  //       boxName: state.boxName,
  //       articleIndex: state.articleIndex));
  // }

  void isBox(bool isbox) {
    emit(BoxState(
      index: state.index,
      isBox: isbox,
    ));
  }

  void addingTotheBasket(dynamic obj) {
    BoxState.boxItems.add(obj);
    print(BoxState.boxItems);
  }
}
