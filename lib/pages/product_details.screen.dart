import 'package:flutter/material.dart';


import 'package:money_point_take_home_assignment/models/product_model.dart';

class ProductDetailsScreen extends StatelessWidget {
  final ProductModel model;
  const ProductDetailsScreen({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(tag: 'product_image', child: Image.asset(model.images[0]))
          ],
        ),
      ),
    );
  }
}
