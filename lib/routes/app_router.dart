import 'package:auto_route/auto_route.dart';
import 'package:j_pizza_v2/pages/carteScreens/level2_screens/pizza_details.dart';
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
    AutoRoute(path: '/Carte', name: 'Carte', page: EmptyRouterPage, children: [
      AutoRoute(
        name: '',
        page: Carte,
      ),
      AutoRoute(name: 'pizzasCaroussel', page: PizzaCarousel,
          //  ! Pizza Item Route
          children: [
            AutoRoute(
              name: 'Pizza_Details',
              page: PizzaDetails,
            )
          ]),
      AutoRoute(
        name: 'entree',
        page: EntreeCarousel,
      ),
      AutoRoute(
        name: 'sandwiches',
        page: SandwichesCarousel,
      ),
      AutoRoute(
        name: 'boissan',
        page: BoissanCarousel,
      ),
      AutoRoute(
        name: 'dessert',
        page: DessertCarousel,
      )
    ]),

    // ? Formules  Item route
    AutoRoute(
        path: '/Formules',
        name: 'Formules',
        page: EmptyRouterPage,
        children: [AutoRoute(name: '')]),
    // ? Pro Item route
    AutoRoute(
        path: '/Pro',
        name: 'Pro',
        page: EmptyRouterPage,
        children: [AutoRoute(name: '')]),
    // ? Panier  Item route
    AutoRoute(
        path: '/Panier',
        name: 'Panier',
        page: EmptyRouterPage,
        children: [AutoRoute(name: '')])
  ])
])
class $AppRouter {}
