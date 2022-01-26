import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:j_pizza_v2/Presentation/routes/app_router.gr.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      appBarBuilder: (_, tabRouter) => AppBar(
        backgroundColor: Colors.white,
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Image(
            height: 60,
            image: AssetImage('assets/logo.png'),
          ),
        ),
        centerTitle: true,
        leading: const AutoBackButton(
          color: Colors.blue,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.home_outlined,
              color: Colors.blue,
            ),
          ),
        ],
      ),
      routes: const [
        CarteRouter(),
        FormulesRouter(),
        ProRouter(),
        PanierRouter(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) => BottomNavigationBar(
          selectedItemColor: Colors.red,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.blue,
          //selectedFontSize: 10,
          //iconSize: 30,
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(
                icon:
                    Image(image: AssetImage('assets/pizza_i.png'), height: 30),
                label: "Carte"),
            BottomNavigationBarItem(
                icon:
                    Image(image: AssetImage('assets/cola_i2.png'), height: 30),
                label: "Formules"),
            BottomNavigationBarItem(
                icon:
                    Image(image: AssetImage('assets/discount.png'), height: 30),
                label: "Promotions"),
            BottomNavigationBarItem(
                icon: Image(
                  image: AssetImage(
                    'assets/panier.png',
                  ),
                  height: 30,
                ),
                label: "Panier"),
          ]),
    );
  }
}
