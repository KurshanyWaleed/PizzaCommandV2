import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:j_pizza_v2/routes/app_router.gr.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      appBarBuilder: (_, tabROuter) => AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Joes Pizza"),
        centerTitle: true,
        leading: const AutoBackButton(),
      ),
      backgroundColor: Colors.blue,
      routes: const [
        CarteRouter(),
        FormulesRouter(),
        PanierRouter(),
        ProRouter()
      ],
      bottomNavigationBuilder: (_, tabsRouter) => BottomNavigationBar(
          selectedItemColor: Colors.red,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.blue,
          selectedFontSize: 10,
          iconSize: 30,
          backgroundColor: Colors.red,
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.local_pizza), label: "Carte"),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_pizza), label: "Formules"),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_pizza), label: "Pro"),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_pizza), label: "Panier"),
          ]),
    );
  }
}
