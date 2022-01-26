import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:j_pizza_v2/Presentation/pages/page_details.dart';
import 'package:j_pizza_v2/data/pizza.dart';

class SandwichesDetails extends StatelessWidget {
  const SandwichesDetails({Key? key, required this.sandwich}) : super(key: key);
  @PathParam()
  final Pizza sandwich;
  @override
  Widget build(BuildContext context) {
    return DetailsPage(
        title: sandwich.title,
        imagePath: sandwich.imagepath,
        details: sandwich.details,
        price: sandwich.price);
  }
}
