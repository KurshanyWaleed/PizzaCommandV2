import 'package:flutter/material.dart';

class formulesList extends StatelessWidget {
  const formulesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: const [
        Center(
          child: Text('Formules liste '),
        )
      ],
    );
  }
}