import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:j_pizza_v2/BolC/cubitBacket/backet_cubit.dart';
import 'package:j_pizza_v2/data/boissan.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({
    Key? key,
    required this.title,
    required this.imagePath,
    required this.details,
    required this.price,
  }) : super(key: key);
  final String title;
  final String imagePath;
  final String details;
  final double price;

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Container(
      margin: const EdgeInsets.all(8),
      child: Column(
        children: [
          Image(
            fit: BoxFit.cover,
            image: AssetImage(imagePath),
            height: MediaQuery.of(context).size.width * .5,
            width: MediaQuery.of(context).size.width,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Center(
              child: Text(title),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Center(
              child: Text(details),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Center(
              child: Text(
                price.toString() + " DT",
                style: const TextStyle(
                    fontSize: 30,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Center(
            child: ElevatedButton(
              style: style,
              child: const Text('Ajouter au Panier 🧺'),
              onPressed: () {
                BlocProvider.of<BacketCubit>(context).addToBacket(Boissan(
                    price: price,
                    imagepath: imagePath,
                    title: title,
                    details: details));
                //BlocProvider.of<BacketCubit>(context).getTotalPrice();
              },
            ),
          )
        ],
      ),
    );
  }
}
