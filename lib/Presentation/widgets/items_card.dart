// ignore: implementation_imports
import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:j_pizza_v2/BolC/boxCubit/boxcubit_cubit.dart';

import 'package:j_pizza_v2/Presentation/routes/app_router.gr.dart';

//import 'package:j_pizza/bloC/cubit/screen_indicator_cubit.dart';
//import 'package:flutter_bloc/flutter_bloc.dart';

class GetItems extends StatelessWidget {
  const GetItems({
    Key? key,
    required this.imagePath,
    required this.title,
  }) : super(key: key);
  final String imagePath;
  final String title;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BoxCubit, BoxState>(
      builder: (context, state) {
        return GestureDetector(
          child: GestureDetector(
            onTap: () {
              switch (title) {
                case 'ENTRÉES':
                  context.router.push(const EntreeCarousel());
                  break;
                case 'PIZZAS':
                  state.isBox
                      ? context.router.push(PizzaCarousel(fromBox: true))
                      : context.router.push(PizzaCarousel(fromBox: false));

                  break;
                case 'BOISSANS':
                  context.router.push(const BoissanCarousel());
                  break;
                case 'DESSERTS':
                  context.router.push(const DessertCarousel());
                  break;
                case 'SANDWICHES':
                  context.router.push(const SandwichesCarousel());
                  break;
              }
            }
            // () => BlocProvider.of<ScreenIndicatorCubit>(context)
            //
            //  .onChangeScreen(index > 8 ? 0 : index, title),
            ,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Card(
                clipBehavior: Clip.antiAlias,
                elevation: 16,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Column(
                  children: [
                    Image(
                      image: AssetImage(imagePath),
                      height: 110,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      title,
                      style: const TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
