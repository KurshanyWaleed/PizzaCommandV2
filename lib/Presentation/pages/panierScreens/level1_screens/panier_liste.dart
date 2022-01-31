import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:j_pizza_v2/BolC/cubitBasket/basket_state.dart';
import 'package:j_pizza_v2/BolC/cubitBasket/basket_cubit.dart';
import 'package:j_pizza_v2/Presentation/widgets/basket_item.dart';

class PanieList extends StatelessWidget {
  const PanieList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BasketCubit2, BasketStateV2>(builder: (context, state) {
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
