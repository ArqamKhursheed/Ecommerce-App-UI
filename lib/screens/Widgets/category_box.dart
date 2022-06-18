import 'package:ecommerce_ui/config/color_config.dart';
import 'package:ecommerce_ui/config/size.dart';
import 'package:ecommerce_ui/data/categories.dart';
import 'package:ecommerce_ui/screens/category/category.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryBoxes extends StatelessWidget {
  const CategoryBoxes({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).orientation == Orientation.portrait
          ? myHeight(context) * 0.12
          : myHeight(context) * 0.28,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: (() => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CategoryDetail(
                            i: index,
                          )))),
              child: SizedBox(
                width: myWidth(context) * 0.15,
                // height: myHeight(context) * 0.1,
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: const Color(0xFFFFE9E5),
                      radius: myWidth(context) * 0.062,
                      child: Image.network(
                        categories[index]["icon"],
                        height: myHeight(context) * 0.06,
                        width: myWidth(context) * 0.06,
                      ),
                    ),
                    SizedBox(
                      height: myHeight(context) * 0.01,
                    ),
                    Text(
                      categories[index]["title"],
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                          color: greyColor),
                      maxLines: 1,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
