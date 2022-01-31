import 'package:flutter/material.dart';

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
