import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:j_pizza_v2/costant.dart';
import 'package:j_pizza_v2/data/boissan.dart';
import 'package:j_pizza_v2/data/dessert.dart';
import 'package:j_pizza_v2/data/entree.dart';
import 'package:j_pizza_v2/data/pizza.dart';
import 'package:j_pizza_v2/data/sandwiche.dart';

part 'backet_state.dart';

class BacketCubit extends Cubit<BacketState> {
  BacketCubit() : super(BacketState());

  // void getTotalPrice() {
  //   emit(BacketState());
  // }

  void addToBacket(dynamic obj) {
    print(obj);
    Type type = obj.runtimeType;
    switch (type.toString()) {
      case "Boissan":
        BacketState.boissanL.add(obj);
        BacketState.getTotalPrice();
        emit(BacketState());
        break;
      case "Entree":
        BacketState.entreeL.add(obj);
        emit(BacketState());
        break;

      case "Sandwich":
        BacketState.sandwichL.add(obj);
        emit(BacketState());
        break;

      case "Dessert":
        BacketState.dessertL.add(obj);
        emit(BacketState());
        break;
      case "Pizza":
        BacketState.pizzaL.add(obj);
        emit(BacketState());
        break;
    }
  }
}
