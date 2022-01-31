import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:j_pizza_v2/BolC/cubit/paniercounter_cubit.dart';

import 'package:j_pizza_v2/BolC/cubitBasket/basket_state.dart';
import 'package:j_pizza_v2/BolC/cubitBasket/basket_cubit.dart';

class PanieList extends StatelessWidget {
  const PanieList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BasketCubit2, BasketStateV2>(builder: (context, state) {
      print(BasketStateV2.basketList.isEmpty);
      return BasketStateV2.basketList.isEmpty
          ? Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(color: Colors.redAccent),
              height: MediaQuery.of(context).size.height,
              child: const Center(
                  child: Text("Le panier est Vide ! 👻 ",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20))))
          : Stack(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                    margin: const EdgeInsets.only(top: 50),
                    child: Column(
                        children: BasketStateV2.basketList.entries.map((e) {
                      return BasketItem(element: e);
                    }).toList()),
                  ),
                ),
                Positioned(
                    top: 0,
                    child: Center(
                      child: Container(
                        decoration: const BoxDecoration(color: Colors.blue),
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Center(
                              child: Text(
                                "Total : " +
                                    BasketStateV2.price.toStringAsFixed(3) +
                                    " DT",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            InkWell(
                              onTap: () =>
                                  BlocProvider.of<BasketCubit2>(context)
                                      .onDeleteAllItems(),
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                height: 30,
                                child: const Center(
                                    child: Text("Effacer tout",
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold))),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ))
              ],
            );
    });
  }
}

class BasketItem extends StatelessWidget {
  const BasketItem({
    Key? key,
    required this.element,
  }) : super(key: key);
  final dynamic element;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      width: MediaQuery.of(context).size.width,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.redAccent),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Text(
            element.value.toString() + "X",
            style: const TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: 10,
          ),
          Flexible(
            child: Row(
              children: [
                Image(
                  image: AssetImage(
                    element.key.imagepath,
                  ),
                  width: 30,
                  height: 30,
                ),
                const SizedBox(
                  width: 30,
                ),
                Text(element.key.title,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          BlocBuilder<PaniercounterCubit, int>(
            builder: (context, state) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      BlocProvider.of<BasketCubit2>(context).onEncreaseQuantity(
                          element.key,
                          element.value <= 1 ? 1 : element.value + 1);
                      // BlocProvider.of<PaniercounterCubit>(context).inc();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: const Icon(
                        Icons.add,
                        size: 30,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Center(
                    child: Text(element.value.toString(),
                        style:
                            const TextStyle(color: Colors.white, fontSize: 30)),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      BlocProvider.of<BasketCubit2>(context).ondesreaseQuantity(
                          element.key,
                          element.value <= 1 ? 1 : element.value - 1);
                      //  BlocProvider.of<PaniercounterCubit>(context).dnc();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: const Icon(
                        Icons.remove,
                        size: 30,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  InkWell(
                    onTap: () => BlocProvider.of<BasketCubit2>(context)
                        .onDeleteItem(element.key),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      height: 30,
                      child: const Center(
                          child: Text("Annuler",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold))),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  )
                ],
              );
            },
          )
        ]),
      ),
    );
  }
}
