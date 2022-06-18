import 'dart:developer';

import 'package:ecommerce_ui/config/color_config.dart';
import 'package:ecommerce_ui/config/size.dart';
import 'package:ecommerce_ui/config/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final VoidCallback onTapped;

  const MyButton({Key? key, required this.onTapped, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: Container(
        height: myHeight(context) * 0.07,
        width: myWidth(context),
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(108, 197, 29, 0.25),
              blurRadius: 9,
              offset: Offset(0, 10),
            ),
          ],
          gradient: LinearGradient(
            colors: [greenLight, greenColor],
          ),
        ),
        child: Text(
          text,
          style: titleTextStyle.copyWith(color: whiteColor),
        ),
      ),
    );
  }
}