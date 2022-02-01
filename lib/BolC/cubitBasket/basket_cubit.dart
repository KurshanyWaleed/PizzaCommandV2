import 'package:bloc/bloc.dart';

import 'basket_state.dart';

//import 'basket_cubit.dart';

class BasketCubit2 extends Cubit<BasketStateV2> {
  BasketCubit2() : super(BasketStateV2());

  void addToBasket(dynamic obj, int howMatch) {
    if (BasketStateV2.basketList.containsKey(obj)) {
      BasketStateV2.price -= obj.price * BasketStateV2.basketList[obj];
      BasketStateV2.basketList.update(obj, (value) {
        return howMatch;
      });
    } else {
      // when new item joint the Map
      BasketStateV2.basketList[obj] = howMatch;
    }
    BasketStateV2.price += obj.price * howMatch;
    emit(BasketStateV2());
    // ignore: avoid_print
    print("this is the list : ");
    // ignore: avoid_print
    print(BasketStateV2.basketList);
  }

  void onEncreaseQuantity(dynamic obj, int howMatch) {
    print("running");
    BasketStateV2.price += obj.price;

    BasketStateV2.basketList.update(obj, (value) {
      return howMatch;
    });
    emit(BasketStateV2());
  }

  void ondesreaseQuantity(dynamic obj, int howMatch) {
    BasketStateV2.price <= obj.price
        ? BasketStateV2.price = obj.price
        : BasketStateV2.price -= obj.price;
    BasketStateV2.basketList.update(obj, (value) {
      return howMatch;
    });
    emit(BasketStateV2());
  }

  void onDeleteItem(dynamic obj) {
    BasketStateV2.basketList.remove(obj);
    emit(BasketStateV2());
  }

  void onDeleteAllItems() {
    BasketStateV2.basketList.clear();

    BasketStateV2.price = 0;
    emit(BasketStateV2());
  }
}

//
//
//
















// class BasketCubit extends Cubit<BasketState> {
//   BasketCubit() : super(BasketState());

//   void addToBacket(dynamic obj) {
//     switch (obj.runtimeType.toString()) {
//       case "Boissan":
//         BasketState.boissanL.add(obj);
//         BasketState.getTotalPrice(obj.price, BasketState.boissanL);
//         emit(BasketState());
//         break;
//       case "Entree":
//         BasketState.entreeL.add(obj);

//         BasketState.getTotalPrice(obj.price, BasketState.entreeL);
//         emit(BasketState());
//         break;

//       case "Sandwich":
//         BasketState.sandwichL.add(obj);

//         BasketState.getTotalPrice(obj.price, BasketState.sandwichL);
//         emit(BasketState());
//         break;

//       case "Dessert":
//         BasketState.dessertL.add(obj);

//         BasketState.getTotalPrice(obj.price, BasketState.dessertL);
//         emit(BasketState());
//         break;
//       case "Pizza":
//         BasketState.pizzaL.add(obj);

//         BasketState.getTotalPrice(obj.price, BasketState.pizzaL);
//         emit(BasketState());
//         break;
//     }
//   }

//   void onDeleteItem(dynamic obj) {
//     switch (obj.runtimeType.toString()) {
//       case "Boissan":
//         BasketState.boissanL.remove(obj);
//         BasketState.getChekForPrice(obj.price);
//         emit(BasketState());
//         break;
//       case "Entree":
//         BasketState.entreeL.remove(obj);
//         BasketState.getChekForPrice(obj.price);
//         emit(BasketState());
//         break;

//       case "Sandwich":
//         BasketState.sandwichL.remove(obj);
//         BasketState.getChekForPrice(obj.price);
//         emit(BasketState());
//         break;
//       case "Dessert":
//         BasketState.dessertL.remove(obj);
//         BasketState.getChekForPrice(obj.price);
//         emit(BasketState());
//         break;
//       case "Pizza":
//         BasketState.pizzaL.remove(obj);
//         BasketState.getChekForPrice(obj.price);
//         emit(BasketState());
//         break;
//     }
//   }

//   void onDeleteAllItems() {
//     BasketState.boissanL.clear();
//     BasketState.dessertL.clear();
//     BasketState.entreeL.clear();
//     BasketState.sandwichL.clear();
//     BasketState.pizzaL.clear();
//     BasketState.price = 0;
//     emit(BasketState());
//   }
// }
