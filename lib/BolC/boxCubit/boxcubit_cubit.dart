import 'package:bloc/bloc.dart';
import 'package:j_pizza_v2/costant.dart';
import 'package:j_pizza_v2/data/pizza.dart';

part 'boxcubit_state.dart';

class BoxCubit extends Cubit<BoxState> {
  BoxCubit() : super(BoxState(isBox: false, articleIndex: 1, boxName: ""));

  void isBox(bool isbox) {
    emit(BoxState(
        isBox: isbox,
        articleIndex: state.articleIndex,
        boxName: state.boxName));
  }

  void addingTotheBasket(dynamic obj) {
    BoxState.boxItems.add(obj);
    print(BoxState.boxItems);
  }

  void onChangeBoxArticle(int index) {
    state.articleIndex = index;
    emit(BoxState(
        isBox: state.isBox,
        boxName: state.boxName,
        articleIndex: state.articleIndex));
  }

  void onChangeBox(String name) {
    state.boxName = name;
    emit(BoxState(
        isBox: state.isBox,
        boxName: state.boxName,
        articleIndex: state.articleIndex));
  }
}
