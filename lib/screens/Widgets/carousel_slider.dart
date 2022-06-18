import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_ui/config/color_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCarousel extends StatefulWidget {
  final List items;
  const MyCarousel({Key? key, required this.items}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<MyCarousel> {
  // ignore: unused_field
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider.builder(
          itemCount: widget.items.length,
          itemBuilder: (context, index, pageIndex) {
            return Container(
              color: blueColor,
              width: MediaQuery.of(context).size.width,
              child: Image.network(
                widget.items[index],
                fit: BoxFit.cover,
              ),
            );
          },
          options: CarouselOptions(
            height: 327.h,
            viewportFraction: 1,
            autoPlay: true,
            onPageChanged: (index, reason) {
              setState(
                () {
                  _currentIndex = index;
                },
              );
            },
          ),
        ),
        Positioned(
          bottom: 40,
          left: 10,
          child: Row(
            children: [
              ...List.generate(
                  widget.items.length, (index) => dot(index, _currentIndex)),
            ],
          ),
        ),
      ],
    );
  }

  Widget dot(index, pageIndex) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(right: 6),
      duration: const Duration(milliseconds: 400),
      width: index == pageIndex ? 24 : 6,
      height: 6,
      decoration: BoxDecoration(
        color: index == pageIndex ? greenColor : whiteColor,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(100),
      ),
    );
  }
}
