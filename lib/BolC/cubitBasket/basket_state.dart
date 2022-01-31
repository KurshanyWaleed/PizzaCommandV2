import 'package:j_pizza_v2/data/boissan.dart';
import 'package:j_pizza_v2/data/dessert.dart';
import 'package:j_pizza_v2/data/entree.dart';
import 'package:j_pizza_v2/data/pizza.dart';
import 'package:j_pizza_v2/data/sandwiche.dart';

// class BasketState {
//   static double price = 0;
//   static List<Boissan> boissanL = [];
//   static List<Pizza> pizzaL = [];
//   static List<Sandwich> sandwichL = [];
//   static List<Entree> entreeL = [];
//   static List<Dessert> dessertL = [];
//   BasketState();

//   static double getTotalPrice(double priceValue, List<dynamic> list) {
//     price += list.isEmpty ? 0 : list.last.price;

//     return price;
//   }

//   static double getChekForPrice(double priceValue) {
//     price > 0 ? price -= priceValue : 0;

//     return price;
//   }
// }

class BasketStateV2 {
  static Map<dynamic, int> basketList = {};
  static double price = 0;

  BasketStateV2();

  // static void addToBasket(dynamic obj, int howMatch) {
  //   basketList.addAll({howMatch: obj});
  //   print("this is the list : ");
  //   print(basketList);
  // }
}

  // late final Boissan? boissanPanier;
  // late final Pizza? pizzaP;
  // late final Sandwich? sandwichP;
  // late final Entree? entreeP;
  // late final Dessert? dessertP;



// static double getTotalPrice(double priceValue, String type) {
  //   print(type);
  //   print(price);
  //   switch (type) {
  //     case "Boissan":
  //       price = boissanL.isEmpty ? 0 : boissanL.length * priceValue;
  //       break;
  //     case "Entree":
  //       price = entreeL.isEmpty ? 0 : entreeL.length * priceValue;
  //       break;
  //     case "Dessert":
  //       price = dessertL.isEmpty ? 0 : dessertL.length * priceValue;
  //       break;
  //     case "Pizza":
  //       price = pizzaL.isEmpty ? 0 : pizzaL.length * priceValue;
  //       break;
  //     case "Sandwich":
  //       price = sandwichL.isEmpty ? 0 : sandwichL.length * priceValue;
  //       break;
  //   }
  //   print("the last " + boissanL.length.toString());

  //   return price;
  // }