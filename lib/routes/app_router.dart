import 'package:auto_route/auto_route.dart';
import 'package:j_pizza_v2/pages/carteScreens/level2_screens/boissan_details.dart';
import 'package:j_pizza_v2/pages/carteScreens/level2_screens/pizza_details.dart';
import 'package:j_pizza_v2/pages/formulesScreens/level1_screens/formules_list.dart';
import 'package:j_pizza_v2/pages/formulesScreens/level2_screens/formules_details.dart';
import 'package:j_pizza_v2/pages/panierScreens/level1_screens/panier_liste.dart';
import 'package:j_pizza_v2/pages/proScreens/level1_screens/pro_list.dart';
import '../pages/carteScreens/carte.dart';
import '../pages/carteScreens/level1_screens/boissan_carousel.dart';
import '../pages/carteScreens/level1_screens/dessert_carousel.dart';
import '../pages/carteScreens/level1_screens/entree_carousel.dart';
import '../pages/carteScreens/level1_screens/pizza_carousel.dart';
import '../pages/carteScreens/level1_screens/sandwiches_carousel.dart';
import '../pages/home.dart';

@MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes: [
  AutoRoute(path: '/', page: Home, children:
// ! bottom bar Item Route
      [
    // ! Carte Item route
    AutoRoute(
        path: 'carte',
        name: 'CarteRouter',
        page: EmptyRouterPage,
        children: [
          AutoRoute(path: '', page: Carte),
          AutoRoute(
            path: 'pizza',
            page: PizzaCarousel,
          ),
          AutoRoute(
            path: 'p_details',
            page: PizzaDetails,
          ),
          AutoRoute(
            path: 'entree',
            page: EntreeCarousel,
          ),
          AutoRoute(
            path: 'sandwiches',
            page: SandwichesCarousel,
          ),
          AutoRoute(path: 'boissan', page: BoissanCarousel),
          AutoRoute(path: 'b_details', page: BoissanDetails),
          AutoRoute(
            path: 'dessert',
            page: DessertCarousel,
          )
        ]),

    // ! Formules  Item route
    AutoRoute(
        path: 'formules',
        name: 'formulesRouter',
        page: EmptyRouterPage,
        children: [
          AutoRoute(path: '', page: formulesList),
          AutoRoute(path: 'f_details', page: FormulesDetails)
        ]),
    // ! Pro Item route
    AutoRoute(
        path: 'pro',
        name: 'ProRouter',
        page: EmptyRouterPage,
        children: [AutoRoute(path: '', page: ProList)]),
    // ! Panier  Item route
    AutoRoute(
        path: 'panier',
        name: 'panierRouter',
        page: EmptyRouterPage,
        children: [AutoRoute(path: '', page: PanieList)])
  ])
])
class $AppRouter {}
