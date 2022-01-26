import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:j_pizza_v2/Presentation/widgets/optionsx4.dart';
import 'package:j_pizza_v2/Presentation/widgets/optionsx6.dart';
import 'package:j_pizza_v2/data/pizza.dart';

class PizzaDetails extends StatefulWidget {
  const PizzaDetails({Key? key, required this.pizza}) : super(key: key);
  @PathParam()
  final Pizza pizza;
  @override
  // ignore: no_logic_in_create_state
  State<PizzaDetails> createState() => _PizzaDetailsState(pizza);
}

class _PizzaDetailsState extends State<PizzaDetails> {
  _PizzaDetailsState(this.pza);
  Pizza pza;
  List<String> options1 = [
    "Chompignons",
    "Jombon",
    "Mozzarella",
    "Sauce Tomate"
  ];

  List<String> options2 = [
    "Mozzarella Special",
    "Jombon de Dinde",
    "Pepperoni",
    "Poulet",
    "Thon",
    "Tomme de Bizerte"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              child: Container(
                margin: const EdgeInsets.only(top: 50),
                child: Column(
                  children: [
                    Image(
                        image:
                            AssetImage(pza.imagepath), // state.pizza.imagepath

                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * .3),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Divider(
                        color: Colors.blue,
                        thickness: 2,
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            const Center(child: Text('Pâté : ')),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                ImageRadio(
                                  size: 30,
                                ),
                                ImageRadio(
                                  size: 50,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Divider(
                                color: Colors.blue,
                                thickness: 2,
                              ),
                            ),
                            const Center(child: Text('Taille : ')),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Image(
                                  image: AssetImage(
                                    'assets/pizza.png',
                                  ),
                                  width: 50,
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Image(
                                  width: 80,
                                  image: const AssetImage(
                                    'assets/pizza.png',
                                  ),
                                  color: Colors.white.withOpacity(0.2),
                                  colorBlendMode: BlendMode.modulate,
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Image(
                                  width: 100,
                                  image: const AssetImage(
                                    'assets/pizza.png',
                                  ),
                                  color: Colors.white.withOpacity(0.2),
                                  colorBlendMode: BlendMode.modulate,
                                ),
                              ],
                            ),
                          ],
                        )),
                    OptionsX4(
                      title: "Ingrédients : ",
                      data: options1,
                    ),
                    OptionsX6(
                      title: "Suppléments (2.0 DT) : ",
                      data: options2,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              top: 0,
              child: Center(
                child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(color: Colors.blue),
                    child: Center(
                      child: Text(
                        "Total : " + pza.price.toString(),
                        style: const TextStyle(color: Colors.white),
                      ),
                    )),
              )),
          Positioned(
            bottom: 0,
            child: Container(
                color: Colors.red,
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: const Icon(
                        Icons.add,
                        color: Colors.red,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    const Text(
                      "0",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)),
                        child: const Icon(
                          Icons.remove,
                          color: Colors.red,
                        )),
                    InkWell(
                      focusColor: Colors.red,
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: const Text(
                          "Ajouter au Panier",
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}

class ImageRadio extends StatefulWidget {
  const ImageRadio({
    Key? key,
    required this.size,
  }) : super(key: key);
  final double size;

  @override
  State<ImageRadio> createState() => _ImageRadioState();
}

class _ImageRadioState extends State<ImageRadio> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          setState(() {});
        },
        child: Image(
          image: const AssetImage(
            'assets/pizza.png',
          ),
          color: Colors.white.withOpacity(0.2),
          colorBlendMode: BlendMode.modulate,
          width: widget.size,
        ));
  }
}
