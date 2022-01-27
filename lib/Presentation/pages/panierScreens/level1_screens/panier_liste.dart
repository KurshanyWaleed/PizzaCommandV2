import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:j_pizza_v2/BolC/cubitBacket/backet_cubit.dart';

class PanieList extends StatelessWidget {
  const PanieList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BacketCubit, BacketState>(builder: (context, state) {
      return BacketState.boissanL.isEmpty
          ? const Center(child: Text("Backet is Empty "))
          : Container(
              child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 50),
                    child: SingleChildScrollView(
                      child: Column(
                          children: BacketState.boissanL.map((e) {
                        print(e.title);
                        return Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                // Image(image: AssetImage(e.imagepath),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        e.imagepath,
                                      ),
                                    )),
                              ),
                              Center(
                                  child: Text(
                                e.title,
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )),
                              Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(50)),
                                  child: const Icon(Icons.remove))
                            ],
                          ),
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(8)),
                        );
                      }).toList()),
                    ),
                  ),
                  Positioned(
                      top: 0,
                      child: Center(
                          child: Container(
                        // margin: const EdgeInsets.only(bottom: 50),
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(color: Colors.blue),
                        child: Center(
                          child: Text(
                            "Total : " +
                                BacketState.price.toStringAsFixed(3) +
                                " DT",
                            style: const TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ))),
                ],
              ),
            );
    });
  }
}
