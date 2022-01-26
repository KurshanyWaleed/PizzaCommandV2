import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:j_pizza_v2/data/boissan.dart';

import '../../page_details.dart';

class BoissanDetails extends StatelessWidget {
  const BoissanDetails({Key? key, required this.boissan}) : super(key: key);
  @PathParam()
  final Boissan boissan;

  @override
  Widget build(BuildContext context) {
    return DetailsPage(
      title: boissan.title,
      details: boissan.details,
      price: boissan.price,
      imagePath: boissan.imagepath,
    );
    // DetailsPage();
  }
}
