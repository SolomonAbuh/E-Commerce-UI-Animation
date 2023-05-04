import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:money_point_take_home_assignment/constants/app_assets.dart';

import 'package:money_point_take_home_assignment/models/product_model.dart';
import 'package:money_point_take_home_assignment/widgets/app_spacer.dart';
import 'package:sizer/sizer.dart';

class ProductDetailsScreen extends StatelessWidget {
  final ProductModel model;
  const ProductDetailsScreen({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        actions: [
          const Icon(Icons.favorite_outline_rounded),
          spaceH(4.w),
          const Icon(Icons.share),
          spaceH(4.w),
          SvgPicture.asset(AppAssets.shoppingBagIcon),
          spaceH(4.w),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Column(
            children: [
              Stack(
                children: [
                  Center(
                    child: SizedBox(
                      height: 40.h,
                      child: Image.asset(
                        model.images[0],
                      ),
                    )
                        .animate()
                        .slideY(
                            begin: 10,
                            duration: const Duration(
                              milliseconds: 800,
                            ),
                            curve: Curves.easeOut)
                        .fadeIn(
                          begin: 0.1,
                          delay: const Duration(milliseconds: 600),
                        )
                        .moveX(end: 30),
                  ),
                  Column(
                    children: List.generate(
                      model.images.length,
                      (index) => Column(
                        children: [
                          Container(
                            height: 6.h,
                            width: 6.h,
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                blurRadius: 10,
                                color: Colors.black.withOpacity(0.2),
                                offset: const Offset(0, 10),
                              )
                            ]),
                            child: ClipRRect(
                              child: Image.asset(
                                model.images[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          spaceV(2.h),
                        ],
                      )
                          .animate()
                          .fadeIn(delay: Duration(milliseconds: 500 * index))
                          .scale(),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
