import 'package:ecommerce_ui/config/color_config.dart';
import 'package:ecommerce_ui/config/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 11.h),
      height: myWidth(context) > myHeight(context)
          ? MediaQuery.of(context).size.height * .14
          : MediaQuery.of(context).size.height * .08,
      margin: EdgeInsets.only(
        top: myHeight(context) * 0.02,
        bottom: myHeight(context) * 0.02,
      ),
      decoration:
          BoxDecoration(color: bgWhite, borderRadius: BorderRadius.circular(5)),
      child: TextField(
        decoration: InputDecoration(
            suffixIcon: Icon(
              CupertinoIcons.slider_horizontal_3,
              size: myHeight(context) * 0.04,
              // color: black,
            ),
            prefixIcon: Icon(
              Icons.search,
              // size: 28,
              size: myHeight(context) * 0.04,
            ),
            hintText: "Search Keywords..",
            border: InputBorder.none),
      ),
    );
  }
}
