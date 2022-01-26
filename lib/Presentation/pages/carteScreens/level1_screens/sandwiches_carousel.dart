import 'package:flutter/material.dart';
import 'package:j_pizza_v2/Presentation/routes/app_router.gr.dart';
import 'package:j_pizza_v2/Presentation/widgets/carousel_page.dart';
import 'package:j_pizza_v2/costant.dart';

class SandwichesCarousel extends StatelessWidget {
  const SandwichesCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CarousselWidget(
            dataList: sandwiches, goToThisRoute: "SandwichDetails"));
  }
}
