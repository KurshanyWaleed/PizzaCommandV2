import 'package:flutter/material.dart';

class SandwichesCarousel extends StatelessWidget {
  const SandwichesCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: const [
        Center(
          child: Text('Sandwiches Caroussel'),
        )
      ],
    );
  }
}
