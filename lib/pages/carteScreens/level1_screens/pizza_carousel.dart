import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:j_pizza_v2/costant.dart';
import 'package:j_pizza_v2/widgets/pizza_card.dart';

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
                      // BlocProvider.of<ScreenIndicatorCubit>(context)
                      //     .onChangeScreen(9, element.title);
                      // BlocProvider.of<PizzaforcommandCubit>(context)
                      //    .onChangeData(element);
                    },
                    child: RecomendPizzaCrad(
                      // index: 9,
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
