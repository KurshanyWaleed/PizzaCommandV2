import 'package:flutter/material.dart';

class DessertCarousel extends StatelessWidget {
  const DessertCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: const [
        Center(
          child: Text('dessert'),
        )
      ],
    );
    ;
  }
}