import 'package:auto_route/annotations.dart';
import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:j_pizza_v2/BolC/boxCubit/boxcubit_cubit.dart';
import 'package:j_pizza_v2/Presentation/routes/app_router.gr.dart';
import 'package:j_pizza_v2/Presentation/widgets/page_details.dart';
import 'package:j_pizza_v2/costant.dart';

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
            child: BlocBuilder<BoxCubit, BoxState>(
              builder: (context, state) {
                return state.articleIndex >= 2
                    ? ElevatedButton(
                        onPressed: () {
                          context.router.push(const Validation());
                        },
                        child: const Text('go to Validation'))
                    : ElevatedButton(
                        onPressed: () {
                          context.router.push(CarouselD(data: pizzas));
                          BlocProvider.of<BoxCubit>(context)
                              .onChangeBoxArticle(2);
                        },
                        child: const Text('Suivant'));
              },
            )),
      ),
    ]);
  }
}
