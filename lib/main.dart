import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:j_pizza_v2/Presentation/routes/app_router.gr.dart';

import 'BolC/cubit/paniercounter_cubit.dart';
import 'BolC/cubitBasket/basket_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _appRouter = AppRouter();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BasketCubit2(),
        ),
        BlocProvider(
          create: (context) => PaniercounterCubit(),
        )
      ],
      child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Joes Pizza',
          routeInformationParser: _appRouter.defaultRouteParser(),
          routerDelegate: _appRouter.delegate()),
    );
  }
}
