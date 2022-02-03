import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:j_pizza_v2/BolC/boxCubit/boxcubit_cubit.dart';
import 'package:j_pizza_v2/Presentation/routes/app_router.gr.dart';

class Validation extends StatelessWidget {
  const Validation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          height: 50,
          child: BlocBuilder<BoxCubit, BoxState>(
            builder: (context, state) {
              return ElevatedButton(
                  child: const Text("validation"),
                  onPressed: () {
                    context.router.popUntil((route) => route.isFirst);
                    // context.router.push(const CarteRouter(children: [Carte()]));
                    BlocProvider.of<BoxCubit>(context).isBox(false);
                  });
            },
          ))
    ]);
  }
}
