import 'package:ecommerce_ui/config/color_config.dart';
import 'package:ecommerce_ui/widget/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


appBar(context, title) {
  return AppBar(
    elevation: 0,
    backgroundColor: white,
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
    title: MyText(text: title,weight: "semi bold",color: black,size: 18.sp,),
    actions: const [
      Padding(
        padding: EdgeInsets.only(right: 14),
        child: Icon(
          CupertinoIcons.slider_horizontal_3,
          color: black,
        ),
      )
    ],
  );
}