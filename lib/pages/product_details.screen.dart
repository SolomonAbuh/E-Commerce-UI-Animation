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
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: ,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [Image.asset(model.images[0])],
        ),
      ),
    );
  }
}
