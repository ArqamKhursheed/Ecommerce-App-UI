import 'package:ecommerce_ui/config/color_config.dart';
import 'package:ecommerce_ui/config/size.dart';
import 'package:ecommerce_ui/config/text_style.dart';
import 'package:ecommerce_ui/data/products.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: myWidth(context) > myHeight(context) ? 3 : 2,
        childAspectRatio: 0.8,
        // crossAxisSpacing: 10,
        // mainAxisSpacing: 10,
      ),
      itemCount: products.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin:
              const EdgeInsets.only(top: 18, left: 14, right: 14, bottom: 14),
          decoration: const BoxDecoration(
            color: whiteColor,
          ),
          child: buildCards(context, index),
        );
      },
    );
  }

  buildCards(context, index) {
    return Stack(
      children: [
        const Align(
          alignment: Alignment.topRight,
          child: Icon(Icons.favorite_border),
        ),
        Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Expanded(
                flex: 4,
                child: buildImage(context, products[index]["image"]),
              ),
              const Spacer(),
              Expanded(
                child: Text(
                  "\$${products[index]["price"]}",
                  style: priceTextStyle,
                ),
              ),
              Expanded(
                child: Text(
                  products[index]["title"],
                  style: titleTextStyle,
                ),
              ),
              Expanded(
                child: Text(
                  products[index]["unit"],
                  style: unitTextStyle,
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    const Divider(
                      thickness: 1.5,
                      color: greyLight,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Icon(
                          Icons.shopping_bag_outlined,
                          color: greenColor,
                        ),
                        SizedBox(
                          width: myWidth(context) * 0.02,
                        ),
                        Text(
                          "Add to cart",
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ],
                    ),

                    // counter(1, context)
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  buildImage(context, image) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Align(
          alignment: const Alignment(0, -1),
          child: Container(
            height: myWidth(context) > myHeight(context)
                ? myHeight(context) * 0.3
                : myHeight(context) * 0.1,
            width: myWidth(context) * 0.3,
            decoration:
                const BoxDecoration(color: greenLight, shape: BoxShape.circle),
          ),
        ),
        Align(
          alignment: const Alignment(0, 3.0),
          child: Image.network(
            image,
            fit: BoxFit.contain,
            height: myWidth(context) > myHeight(context)
                ? myHeight(context) * 0.2
                : myHeight(context) * 0.09,
          ),
        ),
      ],
    );
  }
}