import 'package:flutter/material.dart';

class BoissanCarousel extends StatelessWidget {
  const BoissanCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: const [
        Center(
          child: Text('Booooisssan'),
        )
      ],
    );
  }
}