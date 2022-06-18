import 'dart:async';

import 'package:ecommerce_ui/config/color_config.dart';
import 'package:ecommerce_ui/screens/login.dart';
import 'package:ecommerce_ui/screens/register.dart';
import 'package:ecommerce_ui/widget/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nextPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: ScreenUtil().screenHeight,
          width: ScreenUtil().screenWidth,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/splashbg.png"), fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              MyText(
                text: "Welcome to",
                size: 30.sp,
                color: black,
              ),
              Image.asset(
                "assets/bigCart 1.png",
                // width: 50.w,
                height: 127.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.w),
                child: MyText(
                  text:
                      "Lorem ipsum is placeholder text commonly used in the publishing industries",
                  color: Colors.grey,
                  center: true,
                ),
              ),
              SizedBox(
                height: 450.h,
              ),
              MyText(
                text: "POWERED BY",
                color: black,
                size: 15.sp,
              ),
              MyText(
                text: "TECH IDARA",
                size: 20.sp,
                color: appGreen,
              ),
            ],
          ),
        ),
      ),
    );
  }

  nextPage() {
    Timer(const Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginScreen()));
    });
  }
}
