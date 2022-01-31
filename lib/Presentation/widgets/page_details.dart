import 'package:flutter/material.dart';

import 'package:j_pizza_v2/Presentation/widgets/add_to_panier.dart';

// ignore: must_be_immutable
class DetailsPage extends StatelessWidget {
  DetailsPage({
    Key? key,
    required this.object,
  }) : super(key: key);
  dynamic object;

  @override
  Widget build(BuildContext context) {
    return Stack(
      // height: MediaQuery.of(context).size.height,
      // width: MediaQuery.of(context).size.width,
      // margin: const EdgeInsets.all(8),
      children: [
        Column(
          children: [
            Image(
              fit: BoxFit.cover,
              image: AssetImage(object.imagepath),
              height: MediaQuery.of(context).size.width * .5,
              width: MediaQuery.of(context).size.width,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Center(
                          child: Text(object.title,
                              style: const TextStyle(
                                  color: Colors.red,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Center(
                          child: Text(
                            object.price.toString() + " DT",
                            style: const TextStyle(
                                fontSize: 20,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 5),
                  child: Center(
                    child: Text(
                        object.details +
                            " : is simply dummy text of the printing and typesetting industry.",
                        style: const TextStyle(fontStyle: FontStyle.italic)),
                  ),
                ),
              ],
            ),
          ],
        ),
        Positioned(
            bottom: 0,
            child: AddToPanier(
              obg: object,
            )),
      ],
    );
  }
}









        // Center(
        //   child: ElevatedButton(
        //     style: style,
        //     child: const Text('Ajouter au Panier 🧺'),
        //     onPressed: () {
        //       BlocProvider.of<BasketCubit>(context).addToBacket(Boissan(
        //           price: price,
        //           imagepath: imagePath,
        //           title: title,
        //           details: details));
        //       //BlocProvider.of<BacketCubit>(context).getTotalPrice();
        //     },
        //   ),
        // ),