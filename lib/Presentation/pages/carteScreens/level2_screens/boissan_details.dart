import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:j_pizza_v2/data/boissan.dart';

import '../../page_details.dart';

class BoissanDetails extends StatefulWidget {
  const BoissanDetails({Key? key, required this.boissan}) : super(key: key);
  @PathParam()
  final Boissan boissan;

  @override
  State<BoissanDetails> createState() => _BoissanDetailsState();
}

class _BoissanDetailsState extends State<BoissanDetails>
    with AutomaticKeepAliveClientMixin {
  bool? _throwShotAway = false;
  bool? _throwShotAway2 = false;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Column(children: [
      DetailsPage(
        title: widget.boissan.title,
        details: widget.boissan.details,
        price: widget.boissan.price,
        imagePath: widget.boissan.imagepath,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Checkbox(
              value: _throwShotAway2,
              onChanged: (newValue) {
                setState(() {
                  _throwShotAway2 = newValue;
                });
              }),
          Checkbox(
              activeColor: Colors.blue,
              value: _throwShotAway,
              onChanged: (bool? newValue) {
                setState(() {
                  _throwShotAway = newValue;
                });
              }),
        ],
      ),
    ]);

    // DetailsPage();
  }

  @override
  bool get wantKeepAlive => true;
}
