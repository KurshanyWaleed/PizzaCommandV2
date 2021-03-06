import 'package:auto_route/auto_route.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:j_pizza_v2/BolC/boxCubit/boxcubit_cubit.dart';

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
        child: BlocBuilder<BoxCubit, BoxState>(
          builder: (context, state) {
            // print(state.index.toString());
            // print(BoxState.boxItems.isEmpty
            //     ? "empty"
            //     : BoxState.boxItems.toString());
            return CarouselSlider(
              options: CarouselOptions(
                  pageSnapping: false,
                  height: MediaQuery.of(context).size.height * .7,
                  initialPage: state.indexObjectList[state.index] ?? 0,
                  scrollPhysics: const BouncingScrollPhysics(),
                  enableInfiniteScroll: false,
                  pauseAutoPlayOnTouch: true,
                  enlargeCenterPage: true,
                  autoPlay: false),
              items: dataList.map((element) {
                return InkWell(
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
                        BlocProvider.of<BoxCubit>(context)
                            .getIdexCarousel(dataList, element);
                        break;
                    }
                  },
                  child: RecommendCard(
                    isSelected: state.indexObjectList[state.index] != null &&
                        dataList.indexOf(element) ==
                            state.indexObjectList[state.index],
                    image: element.imagepath,
                    price: element.price,
                    title: element.title,
                    details: element.details,
                    onPress: () => {},
                  ),
                );
              }).toList(),
            );
          },
        ),
      ),
    );
  }
}
