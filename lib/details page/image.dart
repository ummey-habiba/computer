import 'package:flutter/material.dart';

import '../constant.dart';

class productImage extends StatelessWidget {
  const productImage({
    Key? key,
    required this.image, required Size size,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      width: double.infinity,
      height: MediaQuery.of(context).size.width*0.8,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.7,
            width: MediaQuery.of(context).size.width*0.7,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
          Image.asset(
            image,
            height: MediaQuery.of(context).size.width * 0.75,
            width: MediaQuery.of(context).size.width * 0.75,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}