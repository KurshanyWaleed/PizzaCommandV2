import 'package:flutter/material.dart';

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
              child: Text(price.toString()),
            ),
          )
        ],
      ),
    );
  }
}
