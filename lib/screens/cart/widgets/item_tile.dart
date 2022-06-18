import 'package:ecommerce_ui/config/color_config.dart';
import 'package:ecommerce_ui/config/size.dart';
import 'package:ecommerce_ui/config/text_style.dart';
import 'package:ecommerce_ui/data/products.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemTile extends StatelessWidget {
  const ItemTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: myHeight(context) * 0.13,
          width: myWidth(context) * 0.55,
          child: Row(
            children: [
              SizedBox(
                height: myHeight(context) * 0.13,
                width: myWidth(context) * 0.25,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Align(
                      // alignment: const Alignment(0, -1),
                      child: Container(
                        height: myHeight(context) * 0.09,
                        width: myWidth(context) * 0.2,
                        decoration: const BoxDecoration(
                            color: greenLight, shape: BoxShape.circle),
                      ),
                    ),
                    Align(
                      alignment: const Alignment(0, 0.5),
                      child: Image.network(
                        products[5]["image"],
                        fit: BoxFit.contain,
                        height: myWidth(context) > myHeight(context)
                            ? myHeight(context) * 0.09
                            : myHeight(context) * 0.07,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "\$2.22 x4",
                    style: priceTextStyle,
                  ),
                  Text(
                    "Fresh Broccoli",
                    style: titleTextStyle,
                  ),
                  Text(
                    "1.50 lbs",
                    style: unitTextStyle,
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: cross,
            children: [
              IconButton(
                constraints: const BoxConstraints(),
                padding: const EdgeInsets.all(0),
                onPressed: () {},
                icon: Icon(Icons.add, size: myWidth(context) * 0.05),
                color: greenColor,
              ),
              Text(
                "5",
                style: priceTextStyle,
              ),
              IconButton(
                constraints: const BoxConstraints(),
                padding: const EdgeInsets.all(0),
                onPressed: () {},
                icon: Icon(Icons.remove, size: myWidth(context) * 0.06),
                color: greenColor,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
