import 'package:flutter/material.dart';

class PanieList extends StatelessWidget {
  const PanieList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: const [
        Center(
          child: Text('Panier'),
        )
      ],
    );
    ;
  }
}