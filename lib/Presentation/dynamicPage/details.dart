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
                      //BoxState.boxItems.add(object);
                      if (state.index == duobox.length) {
                        context.router.push(const Validation());
                      } else {
                        switch (duobox[state.index].toString()) {
                          case 'Pizza':
                            // BoxState.boxItems.add(object);
                            context.router.push(CarouselD(data: pizzas));
                            BlocProvider.of<BoxCubit>(context).updatetIndex();
                            break;
                          case 'Sandwich':
                            context.router.push(CarouselD(data: sandwiches));
                            BlocProvider.of<BoxCubit>(context).updatetIndex();
                            break;
                          case 'Boissan':
                            context.router.push(CarouselD(data: boissans));
                            BlocProvider.of<BoxCubit>(context).updatetIndex();
                            break;
                          default:
                        }
                      }
                      // if (state.index <= BoxState.liste.length) {
                      //   switch (BoxState.liste[state.index].toString()) {
                      //     case 'pizza':
                      //       context.router.push(CarouselD(data: pizzas));
                      //       BlocProvider.of<BoxCubit>(context).updatetIndex();
                      //       break;
                      //     case 'sandwich':
                      //       context.router.push(CarouselD(data: sandwiches));
                      //       BlocProvider.of<BoxCubit>(context).updatetIndex();
                      //       break;
                      //     case 'boissan':
                      //       context.router.push(CarouselD(data: boissans));
                      //       BlocProvider.of<BoxCubit>(context).updatetIndex();
                      //       break;
                      //     default:
                      //   }
                      // } else {
                      //   context.router.push(Validation());
                      // }
                      // BoxState.liste;
                      // state.index == BoxState.liste["Pizza"]
                      //     ? context.router.push(CarouselD(data: sandwiches))
                      //     : context.router.push(CarouselD(data: pizzas));
                      // BoxState.boxItems.add(object);
                      // BlocProvider.of<BoxCubit>(context).updatetIndex();

                      // print("state index :" + state.index.toString());
                      // print("taille " + BoxState.boxdetails.length.toString());
                      // print("this one");
                      // print(BoxState
                      //     .boxdetails[state.articleCounter]?.values.first);
                      // if (BoxState
                      //         .boxdetails[state.articleCounter]?.values.first !=
                      //     null) {
                      //   if ((state.index ==
                      //           BoxState.boxdetails[state.articleCounter]
                      //               ?.values.first) &&
                      //       (BoxState.boxdetails[state.articleCounter]?.values
                      //               .first !=
                      //           null)) {
                      //     BlocProvider.of<BoxCubit>(context).resetIndex();
                      //     BlocProvider.of<BoxCubit>(context)
                      //         .incArticleCounter();
                      //     switch (BoxState
                      //         .boxdetails[state.articleCounter]!.keys
                      //         .toString()) {
                      //       case "(Pizza)":
                      //         context.router.push(CarouselD(data: pizzas));

                      //         BlocProvider.of<BoxCubit>(context).updatetIndex();

                      //         break;
                      //       case "(Boissan)":
                      //         context.router.push(CarouselD(data: boissans));

                      //         BlocProvider.of<BoxCubit>(context).updatetIndex();
                      //         break;
                      //       case "(Sandwich)":
                      //         context.router.push(CarouselD(data: sandwiches));
                      //         BlocProvider.of<BoxCubit>(context).isBox(true);

                      //         BlocProvider.of<BoxCubit>(context).updatetIndex();
                      //         break;
                      //       default:
                      //     }
                      //   } else if (state.index !=
                      //       BoxState.boxdetails[state.articleCounter]!.values
                      //           .first) {
                      //     BlocProvider.of<BoxCubit>(context).updatetIndex();
                      //     switch (BoxState
                      //         .boxdetails[state.articleCounter]!.keys
                      //         .toString()) {
                      //       case "(Pizza)":
                      //         context.router.push(CarouselD(data: pizzas));

                      //         print("hey");

                      //         break;
                      //       case "(Boissan)":
                      //         context.router.push(CarouselD(data: boissans));
                      //         BlocProvider.of<BoxCubit>(context).isBox(true);

                      //         break;
                      //       case "(Sandwich)":
                      //         context.router.push(CarouselD(data: sandwiches));
                      //         BlocProvider.of<BoxCubit>(context).isBox(true);

                      //         break;
                      //     }
                      //   } else if ((BoxState.boxdetails.length <=
                      //       state.articleCounter)) {
                      //     context.router.push(const Validation());
                      //   }
                      //   //  state.index== ?

                      //   //BoxState.boxdetails[]!.keys.toString()
                      // } else {
                      //   context.router.push(const Validation());
                      // }
                    });
              }))),
    ]);
  }
}
