import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:j_pizza_v2/BolC/boxCubit/boxcubit_cubit.dart';

import 'package:j_pizza_v2/Presentation/widgets/carousel_page.dart';
import 'package:j_pizza_v2/costant.dart';

class PizzaCarousel extends StatelessWidget {
  const PizzaCarousel({Key? key, required this.fromBox}) : super(key: key);
  @pathParam
  final bool fromBox;
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<BoxCubit>(context).isBox(true);
    return Scaffold(
        body: CarousselWidget(dataList: pizzas, goToThisRoute: "PizzaDetails"));
  }
}
