// import 'package:ecommerce_ui/config/color_config.dart';
// import 'package:ecommerce_ui/widget/custom_button.dart';
// import 'package:ecommerce_ui/widget/custom_textfield.dart';
// import 'package:flutter/material.dart';

// class RegisterPage extends StatefulWidget {
//   const RegisterPage({
//     Key? key,
//   }) : super(key: key);
//   static String id = "/register";

//   @override
//   State<RegisterPage> createState() => _RegisterPageState();
// }

// class _RegisterPageState extends State<RegisterPage> {
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;

//     return Scaffold(
//       backgroundColor: white,
//       body: SingleChildScrollView(
//         reverse: true,
//         physics: const BouncingScrollPhysics(),
//         child: Column(children: [
//           Stack(
//             children: [
//               Image.asset("assets/images/women_1.jpg"),

//               Container(
//                 margin: EdgeInsets.only(top: size.height * 0.5),
//                 height: size.height * 0.5,
//                 width: size.width,
//                 decoration: BoxDecoration(
//                   color: white,
//                   borderRadius: const BorderRadius.only(
//                     topLeft: Radius.circular(15),
//                     topRight: Radius.circular(15),
//                   ),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(
//                       horizontal: 16.0, vertical: 30.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text("Create Account", style: headerTextStyle),
//                       Text("Quickly create account", style: subtitleTextStyle),
//                       const SizedBox(height: 10),
//                       CustomTextField(
//                         isPassword: false,
//                         imgName: "email",
//                         title: "Email Address",
//                         size: size,
//                       ),
//                       const SizedBox(height: 5),
//                       CustomTextField(
//                         isPassword: false,
//                         imgName: "phone",
//                         title: "Phone number",
//                         size: size,
//                       ),
//                       const SizedBox(height: 5),
//                       CustomTextField(
//                         isPassword: true,
//                         imgName: "password",
//                         title: "Password",
//                         size: size,
//                       ),
//                       const SizedBox(height: 10),
//                       MyButton(size: size, title: "Register"),
//                       Center(
//                         child: GestureDetector(
//                           onTap: () {
//                             Navigator.pushNamed(context, LoginPage.id);
//                           },
//                           child: RichText(
//                             text: TextSpan(
//                               text: "Already have an account?",
//                               children: [
//                                 TextSpan(
//                                   text: " Login",
//                                   style: TextStyle(
//                                     color: Colors.black,
//                                     fontFamily: primaryFontFamily,
//                                     fontSize: 14,
//                                     fontWeight: FontWeight.w800,
//                                   ),
//                                 ),
//                               ],
//                               style: TextStyle(
//                                 color: subtitleColor,
//                                 fontFamily: primaryFontFamily,
//                                 fontSize: 14,
//                                 fontWeight: FontWeight.w300,
//                               ),
//                             ),
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ]),
//       ),
//     );
//   }

//   tap() {
//     Navigator.pop(context);
//   }
// }

import 'package:ecommerce_ui/config/color_config.dart';
import 'package:ecommerce_ui/screens/register.dart';
import 'package:ecommerce_ui/widget/custom_button.dart';
import 'package:ecommerce_ui/widget/text.dart';
import 'package:ecommerce_ui/widget/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: MyText(
          text: "Welcome",
          weight: "semi bold",
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: ScreenUtil().screenHeight,
          width: ScreenUtil().screenWidth,
          child: Column(
            children: [
              Image.asset(
                "assets/women1.png",
                fit: BoxFit.cover,
                height: 500.h,
                width: double.infinity,
              ),
              Container(
                padding: EdgeInsets.only(top: 16.h, left: 16.w, right: 16.w),
                width: double.infinity,
                height: ScreenUtil().screenHeight - 500,
                decoration: BoxDecoration(
                    color: appGreyBG,
                    borderRadius: BorderRadius.circular(10.r)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText(
                      text: "Welcome Back!",
                      size: 18.sp,
                      weight: "semi bold",
                      color: black,
                    ),
                    MyText(
                      text: "sign in to your account",
                      color: grey,
                    ),
                    MyTextField("Email Address", Icons.email, false),
                    MyTextField("* * * * * * *", Icons.lock, false),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 240.w,
                        ),
                        MyText(
                          text: "forgot password",
                          color: grey,
                          size: 15.sp,
                        )
                      ],
                    ),
                    CustomeButton(text: "Login"),
                    Row(
                      children: [
                        MyText(
                          text: "Dont have an account ? ",
                          color: grey,
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const RegisterScreen()));
                            },
                            child: MyText(
                              text: "Signup",
                              color: black,
                              center: true,
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
