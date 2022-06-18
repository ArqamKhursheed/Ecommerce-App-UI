import 'package:dashed_circle/dashed_circle.dart';
import 'package:ecommerce_ui/config/color_config.dart';
import 'package:ecommerce_ui/config/size.dart';
import 'package:ecommerce_ui/screens/home_view.dart';
import 'package:ecommerce_ui/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgWhite,
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            height: myHeight(context) * 0.2,
          ),

          // verticalSpace(context),
          DashedCircle(
            gapSize: 1,
            strokeWidth: 1,
            dashes: 60,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: CircleAvatar(
                backgroundColor: greenCircle,
                radius: 70.0,
                // backgroundImage: NetworkImage(),
                child: Icon(
                  Icons.check_rounded,
                  size: myHeight(context) * 0.15,
                  color: greenColor,
                ),
              ),
            ),
            color: greenColor,
          ),
          Text(
            "Congrats!",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                color: black,
                fontSize: myHeight(context) * 0.04),
          ),
          Text(
            "Your Order #123456 is \n Successfully Received",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                color: greyDark,
                fontSize: myHeight(context) * 0.02),
          ),
          SizedBox(
            height: myHeight(context) * 0.3,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: MyButton(
                onTapped: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
                text: "Go to home"),
          ),
        ],
      ),
    );
  }
}