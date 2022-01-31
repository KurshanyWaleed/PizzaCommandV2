import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:j_pizza_v2/Presentation/widgets/page_details.dart';

import 'package:j_pizza_v2/data/sandwiche.dart';

class SandwichesDetails extends StatelessWidget {
  const SandwichesDetails({Key? key, required this.sandwich}) : super(key: key);
  @PathParam()
  final Sandwich sandwich;
  @override
  Widget build(BuildContext context) {
    return DetailsPage(
      object: sandwich,
    );
  }
}
