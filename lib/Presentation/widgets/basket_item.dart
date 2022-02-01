import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:j_pizza_v2/BolC/Basketcubit/paniercounter_cubit.dart';

import 'package:j_pizza_v2/BolC/cubitBasket/basket_cubit.dart';

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
          const SizedBox(width: 3),
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
                  width: 5,
                ),
                Text(
                    element.key.title.toString().length >= 8
                        ? element.key.title.toString().substring(
                                0, element.key.title.toString().length - 5) +
                            "..."
                        : element.key.title.toString(),
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 13,
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
                          element.value < 0 ? 1 : element.value + 1);
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
                            const TextStyle(color: Colors.white, fontSize: 25)),
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
                    width: 10,
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
