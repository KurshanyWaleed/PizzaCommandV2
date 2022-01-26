// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i18;

import '../../data/boissan.dart' as _i23;
import '../../data/dessert.dart' as _i20;
import '../../data/entree.dart' as _i21;
import '../../data/pizza.dart' as _i19;
import '../../data/sandwiche.dart' as _i22;
import '../pages/carteScreens/carte.dart' as _i3;
import '../pages/carteScreens/level1_screens/boissan_carousel.dart' as _i12;
import '../pages/carteScreens/level1_screens/dessert_carousel.dart' as _i6;
import '../pages/carteScreens/level1_screens/entree_carousel.dart' as _i8;
import '../pages/carteScreens/level1_screens/pizza_carousel.dart' as _i4;
import '../pages/carteScreens/level1_screens/sandwiches_carousel.dart' as _i10;
import '../pages/carteScreens/level2_screens/boissan_details.dart' as _i13;
import '../pages/carteScreens/level2_screens/dessert_details.dart' as _i7;
import '../pages/carteScreens/level2_screens/entree_details.dart' as _i9;
import '../pages/carteScreens/level2_screens/pizza_details.dart' as _i5;
import '../pages/carteScreens/level2_screens/sandwiches_details.dart' as _i11;
import '../pages/formulesScreens/level1_screens/formules_list.dart' as _i14;
import '../pages/formulesScreens/level2_screens/formules_details.dart' as _i15;
import '../pages/home.dart' as _i1;
import '../pages/panierScreens/level1_screens/panier_liste.dart' as _i17;
import '../pages/proScreens/level1_screens/pro_list.dart' as _i16;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i18.GlobalKey<_i18.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    Home.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.Home());
    },
    CarteRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    FormulesRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    ProRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    PanierRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    Carte.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.Carte());
    },
    PizzaCarousel.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.PizzaCarousel());
    },
    PizzaDetails.name: (routeData) {
      final args = routeData.argsAs<PizzaDetailsArgs>();
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.PizzaDetails(key: args.key, pizza: args.pizza));
    },
    DessertCarousel.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.DessertCarousel());
    },
    DessertDetails.name: (routeData) {
      final args = routeData.argsAs<DessertDetailsArgs>();
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i7.DessertDetails(key: args.key, dessert: args.dessert));
    },
    EntreeCarousel.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.EntreeCarousel());
    },
    EntreeDetails.name: (routeData) {
      final args = routeData.argsAs<EntreeDetailsArgs>();
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i9.EntreeDetails(key: args.key, entree: args.entree));
    },
    SandwichesCarousel.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.SandwichesCarousel());
    },
    SandwichesDetails.name: (routeData) {
      final args = routeData.argsAs<SandwichesDetailsArgs>();
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i11.SandwichesDetails(key: args.key, sandwich: args.sandwich));
    },
    BoissanCarousel.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.BoissanCarousel());
    },
    BoissanDetails.name: (routeData) {
      final args = routeData.argsAs<BoissanDetailsArgs>();
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i13.BoissanDetails(key: args.key, boissan: args.boissan));
    },
    FormulesList.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.formulesList());
    },
    FormulesDetails.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i15.FormulesDetails());
    },
    ProList.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i16.ProList());
    },
    PanieList.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i17.PanieList());
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(Home.name, path: '/', children: [
          _i2.RouteConfig(CarteRouter.name,
              path: 'carte',
              parent: Home.name,
              children: [
                _i2.RouteConfig(Carte.name, path: '', parent: CarteRouter.name),
                _i2.RouteConfig(PizzaCarousel.name,
                    path: 'pizza', parent: CarteRouter.name),
                _i2.RouteConfig(PizzaDetails.name,
                    path: ':pizza', parent: CarteRouter.name),
                _i2.RouteConfig(DessertCarousel.name,
                    path: 'dessert', parent: CarteRouter.name),
                _i2.RouteConfig(DessertDetails.name,
                    path: ':dessert', parent: CarteRouter.name),
                _i2.RouteConfig(EntreeCarousel.name,
                    path: 'entree', parent: CarteRouter.name),
                _i2.RouteConfig(EntreeDetails.name,
                    path: ':entree', parent: CarteRouter.name),
                _i2.RouteConfig(SandwichesCarousel.name,
                    path: 'sandwiches', parent: CarteRouter.name),
                _i2.RouteConfig(SandwichesDetails.name,
                    path: ':sandwiches', parent: CarteRouter.name),
                _i2.RouteConfig(BoissanCarousel.name,
                    path: 'boissan', parent: CarteRouter.name),
                _i2.RouteConfig(BoissanDetails.name,
                    path: ':boissan', parent: CarteRouter.name)
              ]),
          _i2.RouteConfig(FormulesRouter.name,
              path: 'formules',
              parent: Home.name,
              children: [
                _i2.RouteConfig(FormulesList.name,
                    path: '', parent: FormulesRouter.name),
                _i2.RouteConfig(FormulesDetails.name,
                    path: 'f_details', parent: FormulesRouter.name)
              ]),
          _i2.RouteConfig(ProRouter.name,
              path: 'pro',
              parent: Home.name,
              children: [
                _i2.RouteConfig(ProList.name, path: '', parent: ProRouter.name)
              ]),
          _i2.RouteConfig(PanierRouter.name,
              path: 'panier',
              parent: Home.name,
              children: [
                _i2.RouteConfig(PanieList.name,
                    path: '', parent: PanierRouter.name)
              ])
        ])
      ];
}

/// generated route for
/// [_i1.Home]
class Home extends _i2.PageRouteInfo<void> {
  const Home({List<_i2.PageRouteInfo>? children})
      : super(Home.name, path: '/', initialChildren: children);

  static const String name = 'Home';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class CarteRouter extends _i2.PageRouteInfo<void> {
  const CarteRouter({List<_i2.PageRouteInfo>? children})
      : super(CarteRouter.name, path: 'carte', initialChildren: children);

  static const String name = 'CarteRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class FormulesRouter extends _i2.PageRouteInfo<void> {
  const FormulesRouter({List<_i2.PageRouteInfo>? children})
      : super(FormulesRouter.name, path: 'formules', initialChildren: children);

  static const String name = 'FormulesRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class ProRouter extends _i2.PageRouteInfo<void> {
  const ProRouter({List<_i2.PageRouteInfo>? children})
      : super(ProRouter.name, path: 'pro', initialChildren: children);

  static const String name = 'ProRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class PanierRouter extends _i2.PageRouteInfo<void> {
  const PanierRouter({List<_i2.PageRouteInfo>? children})
      : super(PanierRouter.name, path: 'panier', initialChildren: children);

  static const String name = 'PanierRouter';
}

/// generated route for
/// [_i3.Carte]
class Carte extends _i2.PageRouteInfo<void> {
  const Carte() : super(Carte.name, path: '');

  static const String name = 'Carte';
}

/// generated route for
/// [_i4.PizzaCarousel]
class PizzaCarousel extends _i2.PageRouteInfo<void> {
  const PizzaCarousel() : super(PizzaCarousel.name, path: 'pizza');

  static const String name = 'PizzaCarousel';
}

/// generated route for
/// [_i5.PizzaDetails]
class PizzaDetails extends _i2.PageRouteInfo<PizzaDetailsArgs> {
  PizzaDetails({_i18.Key? key, required _i19.Pizza pizza})
      : super(PizzaDetails.name,
            path: ':pizza', args: PizzaDetailsArgs(key: key, pizza: pizza));

  static const String name = 'PizzaDetails';
}

class PizzaDetailsArgs {
  const PizzaDetailsArgs({this.key, required this.pizza});

  final _i18.Key? key;

  final _i19.Pizza pizza;

  @override
  String toString() {
    return 'PizzaDetailsArgs{key: $key, pizza: $pizza}';
  }
}

/// generated route for
/// [_i6.DessertCarousel]
class DessertCarousel extends _i2.PageRouteInfo<void> {
  const DessertCarousel() : super(DessertCarousel.name, path: 'dessert');

  static const String name = 'DessertCarousel';
}

/// generated route for
/// [_i7.DessertDetails]
class DessertDetails extends _i2.PageRouteInfo<DessertDetailsArgs> {
  DessertDetails({_i18.Key? key, required _i20.Dessert dessert})
      : super(DessertDetails.name,
            path: ':dessert',
            args: DessertDetailsArgs(key: key, dessert: dessert));

  static const String name = 'DessertDetails';
}

class DessertDetailsArgs {
  const DessertDetailsArgs({this.key, required this.dessert});

  final _i18.Key? key;

  final _i20.Dessert dessert;

  @override
  String toString() {
    return 'DessertDetailsArgs{key: $key, dessert: $dessert}';
  }
}

/// generated route for
/// [_i8.EntreeCarousel]
class EntreeCarousel extends _i2.PageRouteInfo<void> {
  const EntreeCarousel() : super(EntreeCarousel.name, path: 'entree');

  static const String name = 'EntreeCarousel';
}

/// generated route for
/// [_i9.EntreeDetails]
class EntreeDetails extends _i2.PageRouteInfo<EntreeDetailsArgs> {
  EntreeDetails({_i18.Key? key, required _i21.Entree entree})
      : super(EntreeDetails.name,
            path: ':entree', args: EntreeDetailsArgs(key: key, entree: entree));

  static const String name = 'EntreeDetails';
}

class EntreeDetailsArgs {
  const EntreeDetailsArgs({this.key, required this.entree});

  final _i18.Key? key;

  final _i21.Entree entree;

  @override
  String toString() {
    return 'EntreeDetailsArgs{key: $key, entree: $entree}';
  }
}

/// generated route for
/// [_i10.SandwichesCarousel]
class SandwichesCarousel extends _i2.PageRouteInfo<void> {
  const SandwichesCarousel()
      : super(SandwichesCarousel.name, path: 'sandwiches');

  static const String name = 'SandwichesCarousel';
}

/// generated route for
/// [_i11.SandwichesDetails]
class SandwichesDetails extends _i2.PageRouteInfo<SandwichesDetailsArgs> {
  SandwichesDetails({_i18.Key? key, required _i22.Sandwich sandwich})
      : super(SandwichesDetails.name,
            path: ':sandwiches',
            args: SandwichesDetailsArgs(key: key, sandwich: sandwich));

  static const String name = 'SandwichesDetails';
}

class SandwichesDetailsArgs {
  const SandwichesDetailsArgs({this.key, required this.sandwich});

  final _i18.Key? key;

  final _i22.Sandwich sandwich;

  @override
  String toString() {
    return 'SandwichesDetailsArgs{key: $key, sandwich: $sandwich}';
  }
}

/// generated route for
/// [_i12.BoissanCarousel]
class BoissanCarousel extends _i2.PageRouteInfo<void> {
  const BoissanCarousel() : super(BoissanCarousel.name, path: 'boissan');

  static const String name = 'BoissanCarousel';
}

/// generated route for
/// [_i13.BoissanDetails]
class BoissanDetails extends _i2.PageRouteInfo<BoissanDetailsArgs> {
  BoissanDetails({_i18.Key? key, required _i23.Boissan boissan})
      : super(BoissanDetails.name,
            path: ':boissan',
            args: BoissanDetailsArgs(key: key, boissan: boissan));

  static const String name = 'BoissanDetails';
}

class BoissanDetailsArgs {
  const BoissanDetailsArgs({this.key, required this.boissan});

  final _i18.Key? key;

  final _i23.Boissan boissan;

  @override
  String toString() {
    return 'BoissanDetailsArgs{key: $key, boissan: $boissan}';
  }
}

/// generated route for
/// [_i14.formulesList]
class FormulesList extends _i2.PageRouteInfo<void> {
  const FormulesList() : super(FormulesList.name, path: '');

  static const String name = 'FormulesList';
}

/// generated route for
/// [_i15.FormulesDetails]
class FormulesDetails extends _i2.PageRouteInfo<void> {
  const FormulesDetails() : super(FormulesDetails.name, path: 'f_details');

  static const String name = 'FormulesDetails';
}

/// generated route for
/// [_i16.ProList]
class ProList extends _i2.PageRouteInfo<void> {
  const ProList() : super(ProList.name, path: '');

  static const String name = 'ProList';
}

/// generated route for
/// [_i17.PanieList]
class PanieList extends _i2.PageRouteInfo<void> {
  const PanieList() : super(PanieList.name, path: '');

  static const String name = 'PanieList';
}
