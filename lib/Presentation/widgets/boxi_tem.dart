import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:j_pizza_v2/BolC/boxCubit/boxcubit_cubit.dart';
import 'package:j_pizza_v2/Presentation/routes/app_router.gr.dart';
import 'package:j_pizza_v2/costant.dart';

class BoxItem extends StatelessWidget {
  const BoxItem({
    Key? key,
    required this.title,
    required this.imagepath,
    required this.price,
    required this.description,
  }) : super(key: key);
  final String title;
  final String imagepath;
  final double price;
  final String description;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        switch (title) {
          //"Freind's BOX"
          // BOX x BOX
          case kduoBox:
            BlocProvider.of<BoxCubit>(context).onChangeBox(kduoBox);
            print("object");
            context.navigateTo(FormuledetailsRouter(
                children: [FormulesDetails(checkedBox: duobox)]));
            // push();
            // context.router.push(FormulesDetails(checkedBox: duobox));
            break;
          case kfreindSbox:
            BlocProvider.of<BoxCubit>(context).onChangeBox(kfreindSbox);
            context.router.push(FormulesDetails(checkedBox: freindsBOX));
            break;
          case kboxXbox:
            BlocProvider.of<BoxCubit>(context).onChangeBox(kboxXbox);
            context.router.push(FormulesDetails(checkedBox: boxxbox));
            break;
        }
      },
      child: Container(
        width: MediaQuery.of(context).size.width * .8,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: const [BoxShadow(blurRadius: 2)]),
        margin: const EdgeInsets.all(8),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(title,
                      style: const TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  Text(price.toString(),
                      style: const TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold))
                ],
              ),
            ),
            Image(
              image: AssetImage(imagepath),
              width: MediaQuery.of(context).size.width * .9,
              height: MediaQuery.of(context).size.height * .4,
            )
          ],
        ),
      ),
    );
  }
}

//"assets/pizza_c.png"