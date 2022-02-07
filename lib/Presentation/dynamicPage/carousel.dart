import 'package:auto_route/annotations.dart';

import 'package:flutter/material.dart';

import 'package:j_pizza_v2/Presentation/widgets/carousel_page.dart';

class CarouselD extends StatelessWidget {
  const CarouselD({
    Key? key,
    required this.data,
  }) : super(key: key);
  @pathParam
  final List<dynamic> data;
  @override
  Widget build(BuildContext context) {
    return CarousselWidget(goToThisRoute: 'DetailsD', dataList: data);
  }
}
