// import 'package:flutter/material.dart';

// class MyButton extends StatelessWidget {
//   const MyButton({
//     Key? key,
//     required this.size,
//     required this.title,
//   }) : super(key: key);

//   final Size size;
//   final String title;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: size.width,
//       height: 60,
//       decoration: BoxDecoration(
//           gradient: LinearGradient(colors: primaryButtonColor),
//           boxShadow: [
//             BoxShadow(
//               color: const Color(0xff6CC51D).withOpacity(0.25),
//               offset: const Offset(0, 9),
//               blurRadius: 9,
//             ),
//           ]),
//       child: GestureDetector(
//         onTap: () {},
//         child: Center(
//           child: Text(
//             title,
//             style: TextStyle(
//               color: Colors.white,
//               fontFamily: primaryFontFamily,
//               fontSize: 15,
//               fontWeight: FontWeight.w600,
//             ),
//           ),
//         ),
//         // style: ElevatedButtonTheme.of(context).style!.copyWith(
//       ),
//     );
//   }
// }

import 'package:ecommerce_ui/config/color_config.dart';
import 'package:ecommerce_ui/screens/home_view.dart';
import 'package:ecommerce_ui/widget/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomeButton extends StatelessWidget {
  String text;

  CustomeButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
      },
      child: Container(
        alignment: Alignment.center,
        height: 60.h,
        width: 380.w,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              greenLight,
              appGreen,
            ],
          ),
        ),
        child: MyText(
          text: text,
          size: 18.sp,
          weight: "semi bold",
        ),
      ),
    );
  }
}
