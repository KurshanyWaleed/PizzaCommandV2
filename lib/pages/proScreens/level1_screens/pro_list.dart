import 'package:flutter/material.dart';

class ProList extends StatelessWidget {
  const ProList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: const [
        Center(
          child: Text('Promotions'),
        )
      ],
    );
  }
}