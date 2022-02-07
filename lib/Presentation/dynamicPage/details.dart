import 'package:auto_route/annotations.dart';
import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:j_pizza_v2/BolC/boxCubit/boxcubit_cubit.dart';
import 'package:j_pizza_v2/Presentation/routes/app_router.gr.dart';
import 'package:j_pizza_v2/Presentation/widgets/page_details.dart';
import 'package:j_pizza_v2/costant.dart';
import 'package:j_pizza_v2/data/sandwiche.dart';

class DetailsD extends StatelessWidget {
  const DetailsD({Key? key, required this.object}) : super(key: key);
  @pathParam
  final dynamic object;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
        height: MediaQuery.of(context).size.height * .8,
        top: 0,
        right: 0,
        left: 0,
        child: DetailsPage(
          object: object,
        ),
      ),
      Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
              height: 50,
              margin: EdgeInsets.zero,
              child: BlocBuilder<BoxCubit, BoxState>(builder: (context, state) {
                //     print(" index from details D :  " + state.index.toString());
                //     print(
                //       "  value of  index  :  " + duobox[state.index].toString());
                return ElevatedButton(
                    child: const Text("Suivant"),
                    onPressed: () {
                      if (state.index == duobox.length) {
                        context.router.push(const Validation());
                        // BlocProvider.of<BoxCubit>(context)
                        //     .addingTotheBasket(object);
                        BlocProvider.of<BoxCubit>(context).addingTotheBasketV2(
                            object, state.index == 1 ? 0 : state.index - 1);
                      } else {
                        switch (duobox[state.index].toString()) {
                          case 'Pizza':
                            // BlocProvider.of<BoxCubit>(context)
                            //     .addingTotheBasket(object);
                            BlocProvider.of<BoxCubit>(context)
                                .addingTotheBasketV2(object,
                                    state.index == 1 ? 0 : state.index - 1);
                            context.router.push(CarouselD(data: pizzas));
                            BlocProvider.of<BoxCubit>(context).updatetIndex();
                            break;
                          case 'Sandwich':
                            BlocProvider.of<BoxCubit>(context)
                                .addingTotheBasketV2(object,
                                    state.index == 1 ? 0 : state.index - 1);
                            // BlocProvider.of<BoxCubit>(context)
                            //     .addingTotheBasket(object);
                            context.router.push(CarouselD(data: sandwiches));
                            BlocProvider.of<BoxCubit>(context).updatetIndex();
                            break;
                          case 'Boissan':
                            BlocProvider.of<BoxCubit>(context)
                                .addingTotheBasketV2(object,
                                    state.index == 1 ? 0 : state.index - 1);
                            // BlocProvider.of<BoxCubit>(context)
                            //     .addingTotheBasket(object);
                            context.router.push(CarouselD(data: boissans));
                            BlocProvider.of<BoxCubit>(context).updatetIndex();
                            break;
                          default:
                        }
                      }
                    });
              }))),
    ]);
  }
}
