import 'package:flutter/material.dart';
import 'package:j_pizza_v2/widgets/items_card.dart';

class Carte extends StatelessWidget {
  Carte({Key? key}) : super(key: key);
  final items = [
    GetItems(imagePath: "assets/pizza_c.png", index: 4, title: "PIZZAS"),
    GetItems(imagePath: "assets/entee.png", index: 5, title: "ENTRÉE"),
    GetItems(imagePath: "assets/sandwichs_c.png", index: 6, title: "SANDWICHE"),
    GetItems(imagePath: "assets/cola_c.png", index: 7, title: "BOISSAN"),
    GetItems(imagePath: "assets/dessert_c.png", index: 8, title: "DESSERT"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: GridView.builder(
              physics: const BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemCount: items.length,
              itemBuilder: (BuildContext ctx, index) {
                return items[index];
              }),
        ),
      ),
    );
  }
}
