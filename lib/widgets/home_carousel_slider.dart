import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:money_point_take_home_assignment/widgets/app_spacer.dart';

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
          fit: BoxFit.fitHeight,
          height: 40.h,
        ),
        Padding(
          padding: EdgeInsets.only(
            top: kToolbarHeight,
            left: 5.w,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '#Fashion day',
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12.sp),
              ),
              spaceV(0.5.h),
              Text('80% OFF',
                  style:
                      TextStyle(fontWeight: FontWeight.w600, fontSize: 20.sp)),
              spaceV(0.5.h),
              Text('Discover Fashion',
                  style:
                      TextStyle(fontWeight: FontWeight.w300, fontSize: 16.sp)),
              spaceV(1.h),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black87,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Check this out',
                      style: TextStyle(
                          fontWeight: FontWeight.w300, fontSize: 12.sp)),
                ),
              )
            ],
          ),
        )
      ],
    ),
    Stack(
      children: [
        Image.asset(
          AppAssets.advertTwo,
          fit: BoxFit.fitHeight,
          height: 40.h,
        ),
        Padding(
          padding: EdgeInsets.only(
            top: kToolbarHeight,
            left: 5.w,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '#Fashion day',
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12.sp),
              ),
              spaceV(0.5.h),
              Text('Discover our\nbeauty section',
                  style:
                      TextStyle(fontWeight: FontWeight.w600, fontSize: 20.sp)),
              spaceV(1.h),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black87,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Check this out',
                      style: TextStyle(
                          fontWeight: FontWeight.w300, fontSize: 12.sp)),
                ),
              )
            ],
          ),
        )
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.topRight, children: [
      SizedBox(
        height: 40.h,
        child: CarouselSlider(
          carouselController: carouselController,
          items: imgList,
          options: CarouselOptions(
              height: 40.h,
              viewportFraction: 1,
              enableInfiniteScroll: true,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds:5),
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
          right: 5.w,
          top: 15.h,
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
                width: 6.0,
                height: 2.0,
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
