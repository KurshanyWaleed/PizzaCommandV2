import 'package:flutter/material.dart';

class EntreeCarousel extends StatelessWidget {
  const EntreeCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: const [
        Center(
          child: Text('Entrée Caroussel'),
        )
      ],
    );
  }
}
