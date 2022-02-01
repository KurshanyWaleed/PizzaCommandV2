import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:j_pizza_v2/Presentation/dynamicPage/carousel.dart';
import 'package:j_pizza_v2/Presentation/dynamicPage/details.dart';
import 'package:j_pizza_v2/Presentation/dynamicPage/validation.dart';
import 'package:j_pizza_v2/Presentation/pages/carteScreens/level2_screens/boissan_details.dart';
import 'package:j_pizza_v2/Presentation/pages/carteScreens/level2_screens/dessert_details.dart';
import 'package:j_pizza_v2/Presentation/pages/carteScreens/level2_screens/entree_details.dart';
import 'package:j_pizza_v2/Presentation/pages/carteScreens/level2_screens/pizza_details.dart';
import 'package:j_pizza_v2/Presentation/pages/carteScreens/level2_screens/sandwiches_details.dart';
import 'package:j_pizza_v2/Presentation/pages/formulesScreens/level2_screens/formules_details.dart';
import 'package:j_pizza_v2/Presentation/pages/panierScreens/level1_screens/panier_liste.dart';
import 'package:j_pizza_v2/Presentation/pages/formulesScreens/level1_screens/formules_list.dart';
import 'package:j_pizza_v2/Presentation/pages/proScreens/level1_screens/pro_list.dart';

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
            path: ':pizza',
            page: PizzaDetails,
          ),
          AutoRoute(
            path: 'dessert',
            page: DessertCarousel,
          ),
          AutoRoute(path: ':dessert', page: DessertDetails),
          AutoRoute(
            path: 'entree',
            page: EntreeCarousel,
          ),
          AutoRoute(
            path: ':entree',
            page: EntreeDetails,
          ),
          AutoRoute(
            path: 'sandwiches',
            page: SandwichesCarousel,
          ),
          AutoRoute(
            path: ':sandwiches',
            page: SandwichesDetails,
          ),
          AutoRoute(path: 'boissan', page: BoissanCarousel),
          AutoRoute(path: ':boissan', page: BoissanDetails),
        ]),

    // ! Formules  Item route
    AutoRoute(
        path: 'formules',
        name: 'formulesRouter',
        page: EmptyRouterPage,
        children: [
          AutoRoute(path: '', page: FormulesList),
          AutoRoute(
              path: 'f_details',
              page: EmptyRouterPage,
              name: 'formuledetailsRouter',
              children: [
                AutoRoute(page: FormulesDetails, path: ''),
                AutoRoute(page: CarouselD, path: 'carouselD'),
                AutoRoute(page: DetailsD, path: 'cetailsD'),
                AutoRoute(page: Validation, path: 'validationD'),
              ]),

          // AutoRoute(path: 'carousel', page: CarouselD),
          // AutoRoute(path: 'details', page: DetailsD),
          // AutoRoute(path: 'validation', page: Validation)
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
