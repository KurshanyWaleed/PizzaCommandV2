import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:j_pizza_v2/BolC/cubit/paniercounter_cubit.dart';
import 'package:j_pizza_v2/BolC/cubitBasket/basket_cubit.dart';

class AddToPanier extends StatelessWidget {
  const AddToPanier({
    Key? key,
    required this.obg,
  }) : super(key: key);
  final dynamic obg;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaniercounterCubit, int>(builder: (context, state) {
      return Container(
          color: Colors.red,
          width: MediaQuery.of(context).size.width,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () => BlocProvider.of<PaniercounterCubit>(context).inc(),
                child: Container(
                  child: const Icon(
                    Icons.add,
                    color: Colors.red,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                ),
              ),
              Text(state.toString(),
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
              InkWell(
                onTap: () => BlocProvider.of<PaniercounterCubit>(context).dnc(),
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                    child: const Icon(
                      Icons.remove,
                      color: Colors.red,
                    )),
              ),
              InkWell(
                focusColor: Colors.red,
                onTap: () {
                  BlocProvider.of<BasketCubit2>(context)
                      .addToBasket(obg, state);
                  BlocProvider.of<PaniercounterCubit>(context).reset();
                  // Navigator.pop(context);
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: const Text(
                    "Ajouter au Panier",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ));
    });
  }
}
