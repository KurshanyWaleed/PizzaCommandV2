// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i14;

import '../pages/carteScreens/carte.dart' as _i2;
import '../pages/carteScreens/level1_screens/boissan_carousel.dart' as _i8;
import '../pages/carteScreens/level1_screens/dessert_carousel.dart' as _i9;
import '../pages/carteScreens/level1_screens/entree_carousel.dart' as _i6;
import '../pages/carteScreens/level1_screens/pizza_carousel.dart' as _i4;
import '../pages/carteScreens/level1_screens/sandwiches_carousel.dart' as _i7;
import '../pages/carteScreens/level2_screens/pizza_details.dart' as _i5;
import '../pages/formulesScreens/level1_screens/formules_list.dart' as _i10;
import '../pages/formulesScreens/level2_screens/formules_details.dart' as _i11;
import '../pages/home.dart' as _i1;
import '../pages/panierScreens/level1_screens/panier_liste.dart' as _i13;
import '../pages/proScreens/level1_screens/pro_list.dart' as _i12;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i14.GlobalKey<_i14.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    Home.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.Home());
    },
    CarteRouter.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.Carte());
    },
    FormulesRouter.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.EmptyRouterPage());
    },
    ProRouter.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.EmptyRouterPage());
    },
    PanierRouter.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.EmptyRouterPage());
    },
    PizzaCarousell.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.PizzaCarousel());
    },
    PizzaDetails.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.PizzaDetails());
    },
    EntreeCarousel.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.EntreeCarousel());
    },
    SandwichesCarousel.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.SandwichesCarousel());
    },
    BoissanCarousel.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.BoissanCarousel());
    },
    DessertCarousel.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.DessertCarousel());
    },
    FormulesList.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.formulesList());
    },
    FormulesDetails.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.FormulesDetails());
    },
    ProList.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.ProList());
    },
    PanieList.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.PanieList());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(Home.name, path: '/', children: [
          _i3.RouteConfig(CarteRouter.name,
              path: 'carte',
              parent: Home.name,
              children: [
                _i3.RouteConfig(PizzaCarousell.name,
                    path: 'pizza', parent: CarteRouter.name),
                _i3.RouteConfig(PizzaDetails.name,
                    path: 'pizza_details', parent: CarteRouter.name),
                _i3.RouteConfig(EntreeCarousel.name,
                    path: 'entree', parent: CarteRouter.name),
                _i3.RouteConfig(SandwichesCarousel.name,
                    path: 'sandwiches', parent: CarteRouter.name),
                _i3.RouteConfig(BoissanCarousel.name,
                    path: 'boissan', parent: CarteRouter.name),
                _i3.RouteConfig(DessertCarousel.name,
                    path: 'dessert', parent: CarteRouter.name)
              ]),
          _i3.RouteConfig(FormulesRouter.name,
              path: 'formules',
              parent: Home.name,
              children: [
                _i3.RouteConfig(FormulesList.name,
                    path: '', parent: FormulesRouter.name),
                _i3.RouteConfig(FormulesDetails.name,
                    path: 'f_details', parent: FormulesRouter.name)
              ]),
          _i3.RouteConfig(ProRouter.name,
              path: 'pro',
              parent: Home.name,
              children: [
                _i3.RouteConfig(ProList.name, path: '', parent: ProRouter.name)
              ]),
          _i3.RouteConfig(PanierRouter.name,
              path: 'panier',
              parent: Home.name,
              children: [
                _i3.RouteConfig(PanieList.name,
                    path: '', parent: PanierRouter.name)
              ])
        ])
      ];
}

/// generated route for
/// [_i1.Home]
class Home extends _i3.PageRouteInfo<void> {
  const Home({List<_i3.PageRouteInfo>? children})
      : super(Home.name, path: '/', initialChildren: children);

  static const String name = 'Home';
}

/// generated route for
/// [_i2.Carte]
class CarteRouter extends _i3.PageRouteInfo<void> {
  const CarteRouter({List<_i3.PageRouteInfo>? children})
      : super(CarteRouter.name, path: 'carte', initialChildren: children);

  static const String name = 'CarteRouter';
}

/// generated route for
/// [_i3.EmptyRouterPage]
class FormulesRouter extends _i3.PageRouteInfo<void> {
  const FormulesRouter({List<_i3.PageRouteInfo>? children})
      : super(FormulesRouter.name, path: 'formules', initialChildren: children);

  static const String name = 'FormulesRouter';
}

/// generated route for
/// [_i3.EmptyRouterPage]
class ProRouter extends _i3.PageRouteInfo<void> {
  const ProRouter({List<_i3.PageRouteInfo>? children})
      : super(ProRouter.name, path: 'pro', initialChildren: children);

  static const String name = 'ProRouter';
}

/// generated route for
/// [_i3.EmptyRouterPage]
class PanierRouter extends _i3.PageRouteInfo<void> {
  const PanierRouter({List<_i3.PageRouteInfo>? children})
      : super(PanierRouter.name, path: 'panier', initialChildren: children);

  static const String name = 'PanierRouter';
}

/// generated route for
/// [_i4.PizzaCarousel]
class PizzaCarousell extends _i3.PageRouteInfo<void> {
  const PizzaCarousell() : super(PizzaCarousell.name, path: 'pizza');

  static const String name = 'PizzaCarousell';
}

/// generated route for
/// [_i5.PizzaDetails]
class PizzaDetails extends _i3.PageRouteInfo<void> {
  const PizzaDetails() : super(PizzaDetails.name, path: 'pizza_details');

  static const String name = 'PizzaDetails';
}

/// generated route for
/// [_i6.EntreeCarousel]
class EntreeCarousel extends _i3.PageRouteInfo<void> {
  const EntreeCarousel() : super(EntreeCarousel.name, path: 'entree');

  static const String name = 'EntreeCarousel';
}

/// generated route for
/// [_i7.SandwichesCarousel]
class SandwichesCarousel extends _i3.PageRouteInfo<void> {
  const SandwichesCarousel()
      : super(SandwichesCarousel.name, path: 'sandwiches');

  static const String name = 'SandwichesCarousel';
}

/// generated route for
/// [_i8.BoissanCarousel]
class BoissanCarousel extends _i3.PageRouteInfo<void> {
  const BoissanCarousel() : super(BoissanCarousel.name, path: 'boissan');

  static const String name = 'BoissanCarousel';
}

/// generated route for
/// [_i9.DessertCarousel]
class DessertCarousel extends _i3.PageRouteInfo<void> {
  const DessertCarousel() : super(DessertCarousel.name, path: 'dessert');

  static const String name = 'DessertCarousel';
}

/// generated route for
/// [_i10.formulesList]
class FormulesList extends _i3.PageRouteInfo<void> {
  const FormulesList() : super(FormulesList.name, path: '');

  static const String name = 'FormulesList';
}

/// generated route for
/// [_i11.FormulesDetails]
class FormulesDetails extends _i3.PageRouteInfo<void> {
  const FormulesDetails() : super(FormulesDetails.name, path: 'f_details');

  static const String name = 'FormulesDetails';
}

/// generated route for
/// [_i12.ProList]
class ProList extends _i3.PageRouteInfo<void> {
  const ProList() : super(ProList.name, path: '');

  static const String name = 'ProList';
}

/// generated route for
/// [_i13.PanieList]
class PanieList extends _i3.PageRouteInfo<void> {
  const PanieList() : super(PanieList.name, path: '');

  static const String name = 'PanieList';
}
