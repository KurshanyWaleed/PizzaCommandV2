import 'package:auto_route/annotations.dart';
import 'package:auto_route/src/router/auto_router_x.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:j_pizza_v2/BolC/boxCubit/boxcubit_cubit.dart';

import 'package:j_pizza_v2/Presentation/routes/app_router.gr.dart';

import 'package:j_pizza_v2/costant.dart';

class FormulesDetails extends StatelessWidget {
  const FormulesDetails({Key? key, required this.checkedBox}) : super(key: key);
  @pathParam
  final dynamic checkedBox;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Positioned(top: 50, left: 20, child: Text("test ")),
        Positioned(
            height: 50,
            bottom: 0,
            left: 8,
            right: 8,
            child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: BlocBuilder<BoxCubit, BoxState>(
                  builder: (context, state) {
                    return ElevatedButton(
                        onPressed: () {
                          // state.articleIndex<=2 && state.articleIndex>0?
                          context.router.push(CarouselD(data: pizzas));
                          //CarteRouter(children: [PizzaCarousel(fromBox: true)]));
                        },
                        child: const Text('Démarrer'));
                  },
                ))),
      ],
    );
  }
}
