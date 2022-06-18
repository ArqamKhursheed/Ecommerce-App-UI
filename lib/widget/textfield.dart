import 'package:ecommerce_ui/config/color_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: non_constant_identifier_names
Widget MyTextField(hint, icon,obs) {
  return Container(
    margin: EdgeInsets.only(top: 10.h),
    color: white,
    height: 60.h,
    child: TextField(
      obscureText: obs,
      decoration: InputDecoration(
          border: InputBorder.none, prefixIcon: Icon(icon), hintText: hint),
    ),
  );
}
