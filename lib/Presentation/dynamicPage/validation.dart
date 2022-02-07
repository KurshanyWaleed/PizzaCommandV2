// ignore: implementation_imports
import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:j_pizza_v2/BolC/boxCubit/boxcubit_cubit.dart';

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

                    BlocProvider.of<BoxCubit>(context).isBox(false);
                    BlocProvider.of<BoxCubit>(context).resetIndex();
                  });
            },
          ))
    ]);
  }
}
