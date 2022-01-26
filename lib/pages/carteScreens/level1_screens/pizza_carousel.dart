//import 'package:auto_route/src/router/auto_router_x.dart';

// ignore: implementation_imports
import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:j_pizza_v2/costant.dart';
import 'package:j_pizza_v2/routes/app_router.gr.dart';
import 'package:j_pizza_v2/widgets/carousel_card.dart';

class PizzaCarousel extends StatelessWidget {
  const PizzaCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.blue,
        child: CarouselSlider(
          options: CarouselOptions(
              height: MediaQuery.of(context).size.height * .7,
              initialPage: 1,
              enlargeCenterPage: true,
              enableInfiniteScroll: true,
              autoPlay: true),
          items: pizzas
              .map((element) => InkWell(
                    onTap: () {
                      context.router.push(const PizzaDetails());
                      // BlocProvider.of<ScreenIndicatorCubit>(context)
                      //     .onChangeScreen(9, element.title);
                      // BlocProvider.of<PizzaforcommandCubit>(context)
                      //    .onChangeData(element);
                    },
                    child: RecommendCard(
                      image: element.imagepath,
                      price: element.price,
                      title: element.title,
                      details: element.details,
                      onPress: () => {},
                    ),
                  ))
              .toList(),
        ),
      ),
    ));
  }
}
