import 'package:ecommerce_ui/config/color_config.dart';
import 'package:ecommerce_ui/widget/app_bar.dart';
import 'package:ecommerce_ui/widget/product_card.dart';
import 'package:flutter/material.dart';

class CategoryDetail extends StatelessWidget {
  final int i;

  const CategoryDetail({Key? key, required this.i}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar( context, "Vegetables"),
      backgroundColor: bgWhite,
      body: const SingleChildScrollView(child: ProductCard()),
    );
  }
}