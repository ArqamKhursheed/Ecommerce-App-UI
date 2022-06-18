

import 'package:ecommerce_ui/config/size.dart';
import 'package:ecommerce_ui/config/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

subtotal(text, context) {
  return ListTile(
    contentPadding: EdgeInsets.zero,
    visualDensity: const VisualDensity(vertical: -4),
    title: Text(
      text,
      style: unitTextStyle.copyWith(fontSize: myHeight(context) * 0.02),
    ),
    trailing: Text(
      "\$2.2",
      style: unitTextStyle.copyWith(fontSize: myHeight(context) * 0.02),
    ),
  );
}

totalTile(context) {
  return ListTile(
    contentPadding: EdgeInsets.zero,
    visualDensity: const VisualDensity(vertical: 0),
    title: Text(
      "Total",
      style: titleTextStyle.copyWith(fontSize: myHeight(context) * 0.03),
    ),
    trailing: Text(
      "\$2.2",
      style: titleTextStyle.copyWith(fontSize: myHeight(context) * 0.025),
    ),
  );
}