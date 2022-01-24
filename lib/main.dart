import 'package:flutter/material.dart';
import 'package:j_pizza_v2/pages/home.dart';
import 'package:j_pizza_v2/routes/app_router.gr.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _app_Router = AppRouter();
    return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Joes Pizza',
        routeInformationParser: _app_Router.defaultRouteParser(),
        routerDelegate: _app_Router.delegate());
  }
}
