import 'package:ecommerce_ui/config/color_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

counter(int quantity, context) {
  return Row(
    // mainAxisAlignment: MainAxisAlignment.center,
    // crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Expanded(
        child: IconButton(
          constraints: const BoxConstraints(),
          padding: const EdgeInsets.all(0),
          onPressed: () {},
          icon: const Icon(Icons.remove),
          // size: myHeight(context) * 0.01,
          color: greenColor,
        ),
      ),
      Expanded(
        child: Text(
          quantity.toString(),
          style: GoogleFonts.poppins(
            color: black,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      Expanded(
        child: IconButton(
          constraints: const BoxConstraints(),
          padding: const EdgeInsets.all(0),
          onPressed: () {},
          icon: const Icon(Icons.add),
          // size: myHeight(context) * 0.01,
          color: greenColor,
        ),
      ),
    ],
  );
}