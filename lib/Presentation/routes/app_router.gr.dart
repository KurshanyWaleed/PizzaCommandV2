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
import 'package:flutter/cupertino.dart' as _i22;
import 'package:flutter/material.dart' as _i21;

import '../../data/boissan.dart' as _i27;
import '../../data/dessert.dart' as _i24;
import '../../data/entree.dart' as _i25;
import '../../data/pizza.dart' as _i23;
import '../../data/sandwiche.dart' as _i26;
import '../dynamicPage/carousel.dart' as _i16;
import '../dynamicPage/details.dart' as _i17;
import '../dynamicPage/validation.dart' as _i18;
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
import '../pages/panierScreens/level1_screens/panier_liste.dart' as _i20;
import '../pages/proScreens/level1_screens/pro_list.dart' as _i19;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i21.GlobalKey<_i21.NavigatorState>? navigatorKey])
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
      final args = routeData.argsAs<PizzaCarouselArgs>();
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.PizzaCarousel(key: args.key, fromBox: args.fromBox));
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
          routeData: routeData, child: const _i14.FormulesList());
    },
    FormuledetailsRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    FormulesDetails.name: (routeData) {
      final args = routeData.argsAs<FormulesDetailsArgs>();
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i15.FormulesDetails(key: args.key, checkedBox: args.checkedBox));
    },
    CarouselD.name: (routeData) {
      final args = routeData.argsAs<CarouselDArgs>();
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i16.CarouselD(key: args.key, data: args.data));
    },
    DetailsD.name: (routeData) {
      final args = routeData.argsAs<DetailsDArgs>();
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i17.DetailsD(key: args.key, object: args.object));
    },
    Validation.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i18.Validation());
    },
    ProList.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i19.ProList());
    },
    PanieList.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i20.PanieList());
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
                _i2.RouteConfig(FormuledetailsRouter.name,
                    path: 'f_details',
                    parent: FormulesRouter.name,
                    children: [
                      _i2.RouteConfig(FormulesDetails.name,
                          path: '', parent: FormuledetailsRouter.name),
                      _i2.RouteConfig(CarouselD.name,
                          path: 'carouselD', parent: FormuledetailsRouter.name),
                      _i2.RouteConfig(DetailsD.name,
                          path: 'cetailsD', parent: FormuledetailsRouter.name),
                      _i2.RouteConfig(Validation.name,
                          path: 'validationD',
                          parent: FormuledetailsRouter.name)
                    ])
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
class PizzaCarousel extends _i2.PageRouteInfo<PizzaCarouselArgs> {
  PizzaCarousel({_i22.Key? key, required bool fromBox})
      : super(PizzaCarousel.name,
            path: 'pizza', args: PizzaCarouselArgs(key: key, fromBox: fromBox));

  static const String name = 'PizzaCarousel';
}

class PizzaCarouselArgs {
  const PizzaCarouselArgs({this.key, required this.fromBox});

  final _i22.Key? key;

  final bool fromBox;

  @override
  String toString() {
    return 'PizzaCarouselArgs{key: $key, fromBox: $fromBox}';
  }
}

/// generated route for
/// [_i5.PizzaDetails]
class PizzaDetails extends _i2.PageRouteInfo<PizzaDetailsArgs> {
  PizzaDetails({_i22.Key? key, required _i23.Pizza pizza})
      : super(PizzaDetails.name,
            path: ':pizza', args: PizzaDetailsArgs(key: key, pizza: pizza));

  static const String name = 'PizzaDetails';
}

class PizzaDetailsArgs {
  const PizzaDetailsArgs({this.key, required this.pizza});

  final _i22.Key? key;

  final _i23.Pizza pizza;

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
  DessertDetails({_i22.Key? key, required _i24.Dessert dessert})
      : super(DessertDetails.name,
            path: ':dessert',
            args: DessertDetailsArgs(key: key, dessert: dessert));

  static const String name = 'DessertDetails';
}

class DessertDetailsArgs {
  const DessertDetailsArgs({this.key, required this.dessert});

  final _i22.Key? key;

  final _i24.Dessert dessert;

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
  EntreeDetails({_i22.Key? key, required _i25.Entree entree})
      : super(EntreeDetails.name,
            path: ':entree', args: EntreeDetailsArgs(key: key, entree: entree));

  static const String name = 'EntreeDetails';
}

class EntreeDetailsArgs {
  const EntreeDetailsArgs({this.key, required this.entree});

  final _i22.Key? key;

  final _i25.Entree entree;

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
  SandwichesDetails({_i22.Key? key, required _i26.Sandwich sandwich})
      : super(SandwichesDetails.name,
            path: ':sandwiches',
            args: SandwichesDetailsArgs(key: key, sandwich: sandwich));

  static const String name = 'SandwichesDetails';
}

class SandwichesDetailsArgs {
  const SandwichesDetailsArgs({this.key, required this.sandwich});

  final _i22.Key? key;

  final _i26.Sandwich sandwich;

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
  BoissanDetails({_i22.Key? key, required _i27.Boissan boissan})
      : super(BoissanDetails.name,
            path: ':boissan',
            args: BoissanDetailsArgs(key: key, boissan: boissan));

  static const String name = 'BoissanDetails';
}

class BoissanDetailsArgs {
  const BoissanDetailsArgs({this.key, required this.boissan});

  final _i22.Key? key;

  final _i27.Boissan boissan;

  @override
  String toString() {
    return 'BoissanDetailsArgs{key: $key, boissan: $boissan}';
  }
}

/// generated route for
/// [_i14.FormulesList]
class FormulesList extends _i2.PageRouteInfo<void> {
  const FormulesList() : super(FormulesList.name, path: '');

  static const String name = 'FormulesList';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class FormuledetailsRouter extends _i2.PageRouteInfo<void> {
  const FormuledetailsRouter({List<_i2.PageRouteInfo>? children})
      : super(FormuledetailsRouter.name,
            path: 'f_details', initialChildren: children);

  static const String name = 'FormuledetailsRouter';
}

/// generated route for
/// [_i15.FormulesDetails]
class FormulesDetails extends _i2.PageRouteInfo<FormulesDetailsArgs> {
  FormulesDetails({_i22.Key? key, required dynamic checkedBox})
      : super(FormulesDetails.name,
            path: '',
            args: FormulesDetailsArgs(key: key, checkedBox: checkedBox));

  static const String name = 'FormulesDetails';
}

class FormulesDetailsArgs {
  const FormulesDetailsArgs({this.key, required this.checkedBox});

  final _i22.Key? key;

  final dynamic checkedBox;

  @override
  String toString() {
    return 'FormulesDetailsArgs{key: $key, checkedBox: $checkedBox}';
  }
}

/// generated route for
/// [_i16.CarouselD]
class CarouselD extends _i2.PageRouteInfo<CarouselDArgs> {
  CarouselD({_i22.Key? key, required List<dynamic> data})
      : super(CarouselD.name,
            path: 'carouselD', args: CarouselDArgs(key: key, data: data));

  static const String name = 'CarouselD';
}

class CarouselDArgs {
  const CarouselDArgs({this.key, required this.data});

  final _i22.Key? key;

  final List<dynamic> data;

  @override
  String toString() {
    return 'CarouselDArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [_i17.DetailsD]
class DetailsD extends _i2.PageRouteInfo<DetailsDArgs> {
  DetailsD({_i22.Key? key, required dynamic object})
      : super(DetailsD.name,
            path: 'cetailsD', args: DetailsDArgs(key: key, object: object));

  static const String name = 'DetailsD';
}

class DetailsDArgs {
  const DetailsDArgs({this.key, required this.object});

  final _i22.Key? key;

  final dynamic object;

  @override
  String toString() {
    return 'DetailsDArgs{key: $key, object: $object}';
  }
}

/// generated route for
/// [_i18.Validation]
class Validation extends _i2.PageRouteInfo<void> {
  const Validation() : super(Validation.name, path: 'validationD');

  static const String name = 'Validation';
}

/// generated route for
/// [_i19.ProList]
class ProList extends _i2.PageRouteInfo<void> {
  const ProList() : super(ProList.name, path: '');

  static const String name = 'ProList';
}

/// generated route for
/// [_i20.PanieList]
class PanieList extends _i2.PageRouteInfo<void> {
  const PanieList() : super(PanieList.name, path: '');

  static const String name = 'PanieList';
}
