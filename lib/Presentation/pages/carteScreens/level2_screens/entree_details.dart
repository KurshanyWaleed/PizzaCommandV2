import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:j_pizza_v2/data/entree.dart';
import '../../../widgets/page_details.dart';

class EntreeDetails extends StatelessWidget {
  const EntreeDetails({Key? key, required this.entree}) : super(key: key);
  @PathParam()
  final Entree entree;
  @override
  Widget build(BuildContext context) {
    return DetailsPage(
      object: entree,
    );
  }
}
