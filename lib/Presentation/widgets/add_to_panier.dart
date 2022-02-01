import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:j_pizza_v2/BolC/Basketcubit/paniercounter_cubit.dart';

import 'package:j_pizza_v2/BolC/cubitBasket/basket_cubit.dart';

import 'package:j_pizza_v2/Presentation/routes/app_router.gr.dart';

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
                  context.router.popUntil((route) => route.isFirst);
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Center(
                        child: Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: const Image(
                        image: AssetImage('assets/here3.gif'),
                        width: 200,
                      ),
                    )),
                    duration: const Duration(seconds: 2),
                    dismissDirection: DismissDirection.horizontal,
                    backgroundColor: Colors.blue.withOpacity(0.5),
                  ));
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text(
                      "L'élément a été ajouté",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    duration: Duration(seconds: 2),
                    dismissDirection: DismissDirection.horizontal,
                    backgroundColor: Colors.green,
                  ));
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
