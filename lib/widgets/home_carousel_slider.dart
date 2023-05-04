import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

import '../constants/app_assets.dart';

class HomeCarouselSlider extends StatefulWidget {
  const HomeCarouselSlider({super.key});

  @override
  State<HomeCarouselSlider> createState() => _HomeCarouselSliderState();
}

class _HomeCarouselSliderState extends State<HomeCarouselSlider> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  CarouselController carouselController = CarouselController();

  List<Widget> imgList = [
    Stack(
      children: [
        
        Image.asset(
          AppAssets.advertOne,
          fit: BoxFit.cover,
          height: 35.h,
        ),
        Column(children: [
          
        ],)
      ],
    ),
    SizedBox(
      child: Image.asset(
        AppAssets.advertTwo,
        fit: BoxFit.cover,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.topRight, children: [
      SizedBox(
        height: 35.h,
        child: CarouselSlider(
          carouselController: carouselController,
          items: imgList,
          options: CarouselOptions(
              height: 35.h,
              viewportFraction: 1,
              enableInfiniteScroll: true,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.easeInOut,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(
          top: kToolbarHeight,
          right: 5.w,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: imgList.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: AnimatedContainer(
                curve: Curves.easeOut,
                duration: const Duration(milliseconds: 500),
                width: 12.0,
                height: 4.0,
                margin:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                  color: (Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black)
                      .withOpacity(_current == entry.key ? 0.9 : 0.2),
                ),
              ),
            );
          }).toList(),
        ),
      )
    ]);
  }
}
