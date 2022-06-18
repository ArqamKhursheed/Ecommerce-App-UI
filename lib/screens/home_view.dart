import 'package:ecommerce_ui/config/color_config.dart';
import 'package:ecommerce_ui/config/size.dart';
import 'package:ecommerce_ui/data/test_data.dart';
import 'package:ecommerce_ui/screens/Widgets/carousel_slider.dart';
import 'package:ecommerce_ui/screens/Widgets/category_box.dart';
import 'package:ecommerce_ui/screens/Widgets/searchbar.dart';
import 'package:ecommerce_ui/screens/cart/cart_page.dart';
import 'package:ecommerce_ui/widget/product_card.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration:  const BoxDecoration(
              gradient: LinearGradient(
                  colors: [whiteColor, bgWhite],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 14, right: 14),
                  child: SearchBar(),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14, right: 14),
                  child: MyCarousel(items: imgList),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14, right: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Categories",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(color: Colors.black),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_forward,
                            color: greyColor,
                          ))
                    ],
                  ),
                ),
                verticalSpace(context),
                const Padding(
                  // padding: const EdgeInsets.all(8.0),
                  padding: EdgeInsets.only(left: 14),

                  child: CategoryBoxes(),
                ),
                Padding(
                  // padding: const EdgeInsets.all(8.0),
                  padding: const EdgeInsets.only(left: 14, right: 14),

                  child: Text(
                    "Featured Products",
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium
                        ?.copyWith(color: Colors.black),
                  ),
                ),
                verticalSpace(context),
                const ProductCard(),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: greenColor,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CartPage(),
              ),
            );
          },
          child: const Icon(
            Icons.shopping_bag_outlined,
          ),
        ),
      ),
    );
  }
}