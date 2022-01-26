import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:j_pizza_v2/data/dessert.dart';

import '../../page_details.dart';

class DessertDetails extends StatelessWidget {
  const DessertDetails({Key? key, required this.dessert}) : super(key: key);
  @PathParam()
  final Dessert dessert;
  @override
  Widget build(BuildContext context) {
    return DetailsPage(
        title: dessert.title,
        imagePath: dessert.imagepath,
        details: dessert.details,
        price: dessert.price);
  }
}
