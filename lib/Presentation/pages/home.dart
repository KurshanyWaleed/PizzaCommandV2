import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:j_pizza_v2/BolC/boxCubit/boxcubit_cubit.dart';
import 'package:j_pizza_v2/Presentation/routes/app_router.gr.dart';
import 'package:badges/badges.dart';
import 'package:j_pizza_v2/BolC/cubitBasket/basket_state.dart';
import 'package:j_pizza_v2/BolC/cubitBasket/basket_cubit.dart';
import 'package:j_pizza_v2/costant.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BoxCubit, BoxState>(
      builder: (contextt, state) {
        return AutoTabsScaffold(
          appBarBuilder: (_, tabRouter) => AppBar(
            backgroundColor: Colors.white,
            title: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: !state.isBox
                  ? const Image(
                      height: 60,
                      image: AssetImage('assets/logo.png'),
                    )
                  : state.index == 0 ||
                          context.router.isPathActive('/validationD') ||
                          context.router.isPathActive('/carte') ||
                          context.router.isPathActive('/pro') ||
                          context.router.isPathActive('/panier')
                      ? const Image(
                          height: 60,
                          image: AssetImage('assets/logo.png'),
                        )
                      : Text(
                          "sélectionner l' Article : " + state.index.toString(),
                          style: const TextStyle(color: Colors.blue),
                        ),
            ),
            centerTitle: true,
            leading: !state.isBox
                ? const AutoBackButton(
                    color: Colors.blue,
                  )
                : state.index == 0
                    ? const AutoBackButton(
                        color: Colors.blue,
                      )
                    : BackButton(
                        color: Colors.blue,
                        onPressed: () {
                          context.router
                                  .isPathActive('formules/f_details/carouselD')
                              ? BlocProvider.of<BoxCubit>(context)
                                  .downdatetIndex()
                              : print('print');
                          //
                          // state.index == 1
                          //     ? BlocProvider.of<BoxCubit>(context).downdatetIndex()
                          //     : print('print');
                          // !state.index.isOdd
                          //     ? BlocProvider.of<BoxCubit>(context).downdatetIndex()
                          //     : print('chay');
                          context.router.popTop();
                          // : print('olaaaaaaaaaaaa');
                        }),
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
              items: [
                const BottomNavigationBarItem(
                    icon: Image(
                        image: AssetImage('assets/pizza_i.png'), height: 30),
                    label: "Carte"),
                const BottomNavigationBarItem(
                    icon: Image(
                        image: AssetImage('assets/cola_i2.png'), height: 30),
                    label: "Formules"),
                const BottomNavigationBarItem(
                    icon: Image(
                        image: AssetImage('assets/discount.png'), height: 30),
                    label: "Promotions"),
                BottomNavigationBarItem(
                    icon: BlocBuilder<BasketCubit2, BasketStateV2>(
                      builder: (context, state) {
                        return BasketStateV2.basketList.isEmpty
                            ? const Image(
                                image: AssetImage(
                                  'assets/panier.png',
                                ),
                                height: 30,
                              )
                            : Container(
                                child: Badge(
                                  badgeColor: Colors.blue,
                                  badgeContent: Text(
                                    BasketStateV2.basketList.length.toString(),
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                  child: const Image(
                                    image: AssetImage(
                                      'assets/panier.png',
                                    ),
                                    height: 30,
                                  ),
                                ),
                              );
                      },
                    ),
                    label: "Panier"),
              ]),
        );
      },
    );
  }
}
