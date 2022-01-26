import 'package:flutter/material.dart';
import 'package:j_pizza_v2/Presentation/widgets/items_card.dart';

class Carte extends StatelessWidget {
  const Carte({Key? key}) : super(key: key);
  final items = const [
    GetItems(imagePath: "assets/pizza_c.png", title: "PIZZAS"),
    GetItems(imagePath: "assets/entee.png", title: "ENTRÉES"),
    GetItems(imagePath: "assets/sandwichs_c.png", title: "SANDWICHES"),
    GetItems(imagePath: "assets/cola_c.png", title: "BOISSANS"),
    GetItems(imagePath: "assets/dessert_c.png", title: "DESSERTS"),
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
