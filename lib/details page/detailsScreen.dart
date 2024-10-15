
import 'package:flutter/material.dart';

import '../constant.dart';
import '../models/products.dart';
import 'body.dart';


class DetailsScreen extends StatelessWidget {
   const DetailsScreen({super.key, required this.product,});
   final Product product;
  static const String routeName = '/details';
  @override
  Widget build(BuildContext context, ) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kBackgroundColor,
        leading: Padding(
          padding: const EdgeInsets.only(left: kDefaultPadding / 2),
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        title: Text(
          'Back'.toUpperCase(),
          style: Theme.of(context).textTheme.titleLarge,
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
      body:Body(
        product: product,
      ),
    );
  }
}

