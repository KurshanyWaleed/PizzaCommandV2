// ignore_for_file: implementation_imports

//import 'package:auto_route/src/router/auto_router_x.dart';

import 'package:flutter/material.dart';

import 'package:j_pizza_v2/Presentation/widgets/carousel_page.dart';
import 'package:j_pizza_v2/costant.dart';

class BoissanCarousel extends StatelessWidget {
  const BoissanCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CarousselWidget(
      dataList: boissans,
      goToThisRoute: "BoissanDetails",
    ));
  }
}
