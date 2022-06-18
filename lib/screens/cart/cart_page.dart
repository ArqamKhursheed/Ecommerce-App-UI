import 'dart:developer';

import 'package:ecommerce_ui/config/color_config.dart';
import 'package:ecommerce_ui/config/size.dart';
import 'package:ecommerce_ui/config/text_style.dart';
import 'package:ecommerce_ui/screens/cart/widgets/item_tile.dart';
import 'package:ecommerce_ui/screens/cart/widgets/total_tile.dart';
import 'package:ecommerce_ui/screens/checkout/checkout.dart';
import 'package:ecommerce_ui/widget/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    inspect(myHeight(context));
    return Scaffold(
      backgroundColor: bgWhite,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: whiteColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: black,
          ),
        ),
        centerTitle: true,
        title: Text(
          "Shopping Cart",
          style: appBarHeader,
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                color: whiteColor,
                margin: const EdgeInsets.all(14),
                child: Slidable(
                  endActionPane: ActionPane(
                      openThreshold: 0.2,
                      extentRatio: 0.2,
                      motion: const ScrollMotion(),
                      children: [
                        SlidableAction(
                            backgroundColor: redColor,
                            onPressed: ((context) {}),
                            icon: CupertinoIcons.delete),
                      ]),
                  child: const ItemTile(),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              height: myHeight(context) * 0.3,
              width: myWidth(context),
              color: whiteColor,
              child: Column(
                children: [
                  subtotal("Subtotal", context),
                  subtotal("Shipping charges", context),
                  const Divider(
                    height: 0,
                    thickness: 1.3,
                  ),
                  totalTile(context),
                  MyButton(
                    text: "Checkout",
                    onTapped: () {
                      navigation(context);
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  navigation(context) {
    return Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CheckoutPage(),
        ));
  }
}