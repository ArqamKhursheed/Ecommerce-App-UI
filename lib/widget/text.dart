import 'package:ecommerce_ui/config/color_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyText extends StatefulWidget {
  String text;
  double? size;
  String? weight;
  Color? color;
  bool? center;
  MyText(
      {Key? key,
      required this.text,
      this.color,
      this.size,
      this.weight,
      this.center})
      : super(key: key);

  @override
  State<MyText> createState() => _MyTextState();
}

class _MyTextState extends State<MyText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: GoogleFonts.poppins(
        fontSize: widget.size ?? 15.sp,
        fontWeight: widget.weight == "semi bold"
            ? widget.weight == "medium"
                ? FontWeight.w500
                : FontWeight.w600
            : FontWeight.normal,
        color: widget.color ?? white,
      ),
      textAlign: widget.center == true ? TextAlign.center : null,
    );
  }
}
