part of 'backet_cubit.dart';

class BacketState {
  // late final Boissan? boissanPanier;
  // late final Pizza? pizzaP;
  // late final Sandwich? sandwichP;
  // late final Entree? entreeP;
  // late final Dessert? dessertP;
  static double price = 0;
  static List<Boissan> boissanL = [];
  static List<Pizza> pizzaL = [];
  static List<Sandwich> sandwichL = [];
  static List<Entree> entreeL = [];
  static List<Dessert> dessertL = [];
  BacketState();

  static double getTotalPrice() {
    // for (var e in boissanL) {
    print("the last " + boissanL.length.toString());
    //   price += e.price;
    //   print("the new " + price.toString());
    // }
    price = boissanL.isEmpty ? 0 : boissanL.length * 1.2;
    return price;
  }
}
