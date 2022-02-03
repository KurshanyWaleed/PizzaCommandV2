import 'package:auto_route/annotations.dart';
import 'package:auto_route/src/router/auto_router_x.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:j_pizza_v2/BolC/boxCubit/boxcubit_cubit.dart';

import 'package:j_pizza_v2/Presentation/routes/app_router.gr.dart';

import 'package:j_pizza_v2/costant.dart';
import 'package:j_pizza_v2/data/sandwiche.dart';

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
                    print("formule details " + state.index.toString());
                    print("formule details " + duobox.length.toString());
                    return ElevatedButton(
                        onPressed: () {
                          if (state.index == 4) {
                            context.router.push(const Validation());
                          } else {
                            switch (duobox[state.index].toString()) {
                              case 'Pizza':
                                context.router.push(CarouselD(data: pizzas));
                                BlocProvider.of<BoxCubit>(context).isBox(true);
                                BlocProvider.of<BoxCubit>(context)
                                    .updatetIndex();

                                break;
                              case 'Snadwich':
                                context.router
                                    .push(CarouselD(data: sandwiches));
                                BlocProvider.of<BoxCubit>(context).isBox(true);
                                BlocProvider.of<BoxCubit>(context)
                                    .updatetIndex();
                                break;
                              case 'Boissan':
                                context.router.push(CarouselD(data: boissans));
                                BlocProvider.of<BoxCubit>(context).isBox(true);
                                BlocProvider.of<BoxCubit>(context)
                                    .updatetIndex();
                                break;
                              default:
                            }
                          }
                        },
                        child: const Text('Démarrer'));
                  },
                ))),
      ],
    );
  }
}
