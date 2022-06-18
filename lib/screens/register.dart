// import 'package:ecommerce_ui/config/color_config.dart';
// import 'package:flutter/material.dart';

// class LoginPage extends StatefulWidget {
//   const LoginPage({Key? key}) : super(key: key);
//   static String id = "/login";
//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       backgroundColor: white,
//       body: SingleChildScrollView(
//         physics: const BouncingScrollPhysics(),
//         reverse: true,
//         child: Column(
//           children: [
//             Stack(
//               children: [
//                 Image.asset("assets/images/women_2.jpg"),
//                 WelcomeWithGradient(tap: () {}),
//                 Container(
//                   margin: const EdgeInsets.only(top: 440),
//                   height: size.height * 0.5,
//                   width: size.width,
//                   decoration: BoxDecoration(
//                     color: white,
//                     borderRadius: const BorderRadius.only(
//                       topLeft: Radius.circular(15),
//                       topRight: Radius.circular(15),
//                     ),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(
//                         horizontal: 16.0, vertical: 30.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Welcome back !",
//                           style: headerTextStyle,
//                         ),
//                         Text(
//                           "Sign in to your account",
//                           style: subtitleTextStyle,
//                         ),
//                         const SizedBox(height: 10),
//                         CustomTextField(
//                           isPassword: false,
//                           imgName: "email",
//                           title: "Email Address",
//                           size: size,
//                         ),
//                         const SizedBox(height: 5),
//                         CustomTextField(
//                           isPassword: true,
//                           imgName: "password",
//                           title: "Password",
//                           size: size,
//                         ),
//                         const SizedBox(height: 10),
//                         Row(
//                           children: [
//                             Checkbox(
//                               value: false,
//                               onChanged: (value) {},
//                             ),
//                             Text(
//                               "Remember me",
//                               style: subtitleTextStyle.copyWith(
//                                   fontWeight: FontWeight.w500),
//                             ),
//                             const Spacer(),
//                             Text(
//                               "Forgot Password",
//                               style: subtitleTextStyle.copyWith(
//                                 color: const Color(0xff407EC7),
//                                 fontWeight: FontWeight.w700,
//                               ),
//                             ),
//                           ],
//                         ),
//                         MyButton(size: size, title: "Login"),
//                         const SizedBox(height: 15),
//                         Center(
//                           child: GestureDetector(
//                             onTap: () {
//                               Navigator.pushNamed(context, RegisterPage.id);
//                             },
//                             child: GestureDetector(
//                               onTap: () {
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                     builder: (context) => const RegisterPage(),
//                                   ),
//                                 );
//                               },
//                               child: RichText(
//                                 text: TextSpan(
//                                   text: "Don't have an account?",
//                                   children: [
//                                     TextSpan(
//                                       text: " Sign up",
//                                       style: TextStyle(
//                                         color: Colors.black,
//                                         fontFamily: primaryFontFamily,
//                                         fontSize: 14,
//                                         fontWeight: FontWeight.w800,
//                                       ),
//                                     ),
//                                   ],
//                                   style: TextStyle(
//                                     color: subtitleColor,
//                                     fontFamily: primaryFontFamily,
//                                     fontSize: 14,
//                                     fontWeight: FontWeight.w300,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:ecommerce_ui/config/color_config.dart';
import 'package:ecommerce_ui/screens/login.dart';
import 'package:ecommerce_ui/widget/custom_button.dart';
import 'package:ecommerce_ui/widget/text.dart';
import 'package:ecommerce_ui/widget/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

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
          // height: ScreenUtil().screenHeight,
          // width: ScreenUtil().screenWidth,
          child: Column(
            children: [
              Image.asset(
                "assets/women1.png",
                fit: BoxFit.cover,
                height: 430.h,
                width: double.infinity,
              ),
              Container(
                padding: EdgeInsets.only(top: 16.h, left: 16.w, right: 16.w),
                width: double.infinity,
                height: ScreenUtil().screenHeight - 430,
                decoration: BoxDecoration(
                    color: appGreyBG,
                    borderRadius: BorderRadius.circular(10.r)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText(
                      text: "Create Account!",
                      size: 18.sp,
                      weight: "semi bold",
                      color: black,
                    ),
                    MyText(
                      text: "quickl create account",
                      color: grey,
                    ),
                    MyTextField("Email Address", Icons.email, false),
                    MyTextField("Phone Number", Icons.phone, false),
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
                    CustomeButton(text: "Signup"),
                    Row(
                      children: [
                        MyText(
                          text: "Already have an account ? ",
                          color: grey,
                        ),
                        Center(
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const LoginScreen()));
                              },
                              child: MyText(
                                text: "Login",
                                color: black,
                              )),
                        ),
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
