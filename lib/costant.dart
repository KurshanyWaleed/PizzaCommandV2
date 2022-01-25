import 'package:flutter/material.dart';

import 'data/pizza.dart';

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

int navbaritems = 4;
int carteItem = 8;
int detailsItem = 14;
