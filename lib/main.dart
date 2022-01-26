import 'package:flutter/material.dart';
import 'package:j_pizza_v2/Presentation/routes/app_router.gr.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _appRouter = AppRouter();
    return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Joes Pizza',
        routeInformationParser: _appRouter.defaultRouteParser(),
        routerDelegate: _appRouter.delegate());
  }
}
