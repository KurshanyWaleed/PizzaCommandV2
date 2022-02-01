import 'package:flutter/material.dart';
import 'package:j_pizza_v2/Presentation/widgets/boxi_tem.dart';

class FormulesList extends StatelessWidget {
  const FormulesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
            color: Colors.red,
            child: Column(
              children: const [
                BoxItem(
                  title: "Duo BOX",
                  price: 29900,
                  imagepath: "assets/pizza_c.png",
                  description: "2 Pizza Meduim , 1 dessert et 1 boissan 1L",
                ),
                BoxItem(
                  title: "Freind's BOX",
                  price: 45000,
                  imagepath: "assets/sandwichs_c.png",
                  description: "2 Pizza Large , 1 dessert et 1 boissan 1L",
                ),
                BoxItem(
                    description:
                        "2 Pizza Extra Large , 1 dessert et 1 boissan 1L",
                    title: "BOX x BOX",
                    price: 65000,
                    imagepath: "assets/entee.png"),
              ],
            )));
  }
}
