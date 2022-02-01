import 'package:flutter/material.dart';
import 'package:j_pizza_v2/data/dessert.dart';
import 'package:j_pizza_v2/data/entree.dart';
import 'package:j_pizza_v2/data/sandwiche.dart';

import 'data/boissan.dart';
import 'data/pizza.dart';

const kduoBox = "Duo BOX";
const kfreindSbox = "Freind's BOX";
const kboxXbox = "BOX x BOX";

Map<dynamic, int> duobox = {Pizza: 2, Sandwich: 2, Boissan: 1};
Map<dynamic, int> freindsBOX = {Pizza: 2, Sandwich: 2, Boissan: 1};
Map<dynamic, int> boxxbox = {Pizza: 3, Sandwich: 2, Boissan: 1};
Map<int, dynamic> box = {
  0: [
    Pizza(
        details: "testPizza1",
        price: 12000,
        imagepath: "assets/pizza_c.png",
        title: "test"),
    Pizza(
        details: "test",
        price: 12000,
        imagepath: "assets/pizza_c.png",
        title: "test")
  ],
  1: [
    Sandwich(
        details: "testSandwich1",
        price: 12000,
        imagepath: "assets/sandwiches_images/deli.png",
        title: "testSandwich1"),
    Sandwich(
        details: "testSandwich2",
        price: 12000,
        imagepath: "assets/sandwiches_images/technomic_s.png",
        title: "testSandwich2")
  ],
  3: Boissan(
    details: "testBoissan",
    price: 10000,
    title: "testboissan",
    imagepath: "assets/eau_images/cola15.png",
  )
};

final List<Entree> entrees = [
  Entree(
      price: 3.5,
      imagepath: "assets/entree_images/soupe.png",
      title: "Soupe",
      details: " soupe"),
  Entree(
      price: 3.5,
      imagepath: "assets/entree_images/oeufs_durs_farcis_au_saumon.png",
      title: "Oeufs au Saumon",
      details: "oeufs durs farcis au saumon"),
  Entree(
      price: 2.8,
      imagepath: "assets/entree_images/entree_foid.png",
      title: "Entrée Froid",
      details: "entrée froid"),
];

final List<Dessert> desserts = [
  Dessert(
      price: 13.5,
      imagepath: "assets/dessert_images/fudge_ice.png",
      title: "Fudge Ice ",
      details: " fudge ice"),
  Dessert(
      price: 7.5,
      imagepath: "assets/dessert_images/malaysian_dessert.png",
      title: "Malaysian Dessert",
      details: " malaysian dessert"),
  Dessert(
      price: 2.8,
      imagepath: "assets/dessert_images/oreo_chocolate.png",
      title: "Oreo Chocolate",
      details: "oreo Chocolate"),
  Dessert(
      price: 3.5,
      imagepath: "assets/dessert_images/potluck.png",
      title: "Potluck Dessert",
      details: "potluck dessert"),
];

final List<Sandwich> sandwiches = [
  Sandwich(
      price: 13.5,
      imagepath: "assets/sandwiches_images/deli.png",
      title: "Deli Sandwiche",
      details: " deli sandwiche"),
  Sandwich(
      price: 7.5,
      imagepath: "assets/sandwiches_images/parma.png",
      title: "Parma Sandwich",
      details: " Parma Sandwich"),
  Sandwich(
      price: 10,
      imagepath: "assets/sandwiches_images/technomic_burger.png",
      title: " Hot Technomic Burger ",
      details: "Hot Technomic Burger 🌶️"),
  Sandwich(
      price: 7.5,
      imagepath: "assets/sandwiches_images/technomic_s.png",
      title: "Technomic Sandwich",
      details: "technomic sandwich"),
  Sandwich(
      price: 7,
      imagepath: "assets/sandwiches_images/turkey_muffuletto.png",
      title: "Turkey Muffuletto",
      details: "turkey muffuletto"),
];

final List<Boissan> boissans = [
  Boissan(
      price: 3.5,
      imagepath: "assets/eau_images/cola15.png",
      title: "Coca-Cola 1.5L",
      details: " une boite de cola"),
  Boissan(
      price: 1.2,
      imagepath: "assets/eau_images/eau.png",
      title: "Eau Safia",
      details: " 1L"),
  Boissan(
      price: 1.8,
      imagepath: "assets/eau_images/cola05.png",
      title: "Coca-Cola 0.5L",
      details: " une boite de cola")
];

final List<Pizza> pizzas = [
  Pizza(
      imagepath: "assets/pizza_c.png",
      title: "California Pizza",
      details:
          "Your choice to use either thin or thick crust will determine how you will bake your pizza",
      price: 28.500),
  Pizza(
      imagepath: "assets/pizza_images/detroi_pizza.png",
      title: "Detrio Pizza",
      details:
          "Pepperoni, brick cheese usually Wisconsin brick cheese, and tomato sauce. Mushrooms and olives",
      price: 10.000),
  Pizza(
      imagepath: "assets/pizza_images/chicago_pizza.png",
      title: "Chicago Pizza",
      details:
          "Ground beef ,sausage, pepperoni, onion, mushrooms, and green peppers.",
      price: 9.000),
  Pizza(
      imagepath: "assets/pizza_images/greeken_pizza.png",
      title: "Greek Pizza",
      details: "Features a thick and chewy crust cooked in shallow, oiled pans",
      price: 18.000),
  Pizza(
      imagepath: "assets/pizza_images/luis_pizza.png",
      title: "St. Luis Pizza",
      details: "Sweeter tomato sauce with a hefty dosage of oregano.",
      price: 35.000),
  Pizza(
      imagepath: "assets/pizza_images/neapolitalo_pizza.png",
      title: "Neapolitano Pizza",
      details:
          "Fresh mozzarella, tomatoes, basil leaves, oregano, and olive oil. ",
      price: 28.500),
  Pizza(
      imagepath: "assets/pizza_images/newyork_pizza.png",
      title: "New York Pizza",
      details:
          "With its characteristic large, foldable slices and crispy outer crust.",
      price: 8.000),
  Pizza(
      imagepath: "assets/pizza_images/sicilian_pizza.png",
      title: "Sicilain Pizza",
      details:
          "Sicilian pizzas are often topped with bits of tomato, onion, anchovies, and herbs.",
      price: 5.000),
];

const MaterialColor white = MaterialColor(
  0xFFFFFFFF,
  <int, Color>{
    50: Color(0xFFFFFFFF),
    100: Color(0xFFFFFFFF),
    200: Color(0xFFFFFFFF),
    300: Color(0xFFFFFFFF),
    400: Color(0xFFFFFFFF),
    500: Color(0xFFFFFFFF),
    600: Color(0xFFFFFFFF),
    700: Color(0xFFFFFFFF),
    800: Color(0xFFFFFFFF),
    900: Color(0xFFFFFFFF),
  },
);
