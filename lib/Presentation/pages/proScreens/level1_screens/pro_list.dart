import 'package:flutter/material.dart';

class ProList extends StatelessWidget {
  const ProList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/congratulations.png"),
          fit: BoxFit.cover,
        ),
      ),
      height: MediaQuery.of(context).size.height,
      child: const Center(
          child: Text(
        "Aucune promotion pour l'instant ! \n 🥺 ",
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      )),
    );
  }
}
