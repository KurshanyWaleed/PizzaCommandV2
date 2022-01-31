import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import 'package:j_pizza_v2/data/boissan.dart';

import '../../../widgets/page_details.dart';

class BoissanDetails extends StatelessWidget {
  const BoissanDetails({Key? key, required this.boissan}) : super(key: key);
  @PathParam()
  final Boissan boissan;

  @override
  Widget build(BuildContext context) {
    return DetailsPage(
      object: boissan,
    );
  }
}


// class BoissanDetails extends StatefulWidget {
//   const BoissanDetails({Key? key, required this.boissan}) : super(key: key);
//   @PathParam()
//   final Boissan boissan;

//   @override
//   // ignore: no_logic_in_create_state
//   State<BoissanDetails> createState() => _BoissanDetailsState(boissan);
// }

// class _BoissanDetailsState extends State<BoissanDetails>
//     with AutomaticKeepAliveClientMixin {
//   _BoissanDetailsState(this.bssn);
//   final Boissan bssn;
//   @override
//   Widget build(BuildContext context) {
//     super.build(context);
//     return DetailsPage(
//       obg: bssn,
//     );

//     // DetailsPage();
//   }

//   @override
//   bool get wantKeepAlive => true;
// }
