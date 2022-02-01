import 'package:auto_route/auto_route.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:j_pizza_v2/Presentation/routes/app_router.gr.dart';

import 'carousel_card.dart';

class CarousselWidget extends StatelessWidget {
  const CarousselWidget({
    Key? key,
    required this.goToThisRoute,
    required this.dataList,
  }) : super(key: key);
  final String goToThisRoute;
  final List dataList;
  @override
  Widget build(BuildContext context) {
    return Center(
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
          items: dataList
              .map((element) => InkWell(
                    onTap: () {
                      switch (goToThisRoute) {
                        case "BoissanDetails":
                          context.router.push(BoissanDetails(boissan: element));
                          break;
                        case "PizzaDetails":
                          context.router.push(PizzaDetails(pizza: element));
                          break;
                        case "DessertDetails":
                          context.router.push(DessertDetails(dessert: element));
                          break;
                        case "EntreeDetails":
                          context.router.push(EntreeDetails(entree: element));
                          break;
                        case "SandwichDetails":
                          context.router
                              .push(SandwichesDetails(sandwich: element));
                          break;
                        case "DetailsD":
                          context.router.push(DetailsD(object: element));
                          break;
                        //  case "PizzaDetails":
                        // context.router.push(PizzaDetails(Pizza: element));
                        // break;
                      }
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
    );
  }
}
