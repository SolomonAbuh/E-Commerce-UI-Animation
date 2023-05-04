import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:money_point_take_home_assignment/constants/app_assets.dart';
import 'package:money_point_take_home_assignment/models/product_model.dart';
import 'package:money_point_take_home_assignment/widgets/app_spacer.dart';
import 'package:sizer/sizer.dart';

class ProductDetailsScreen extends StatefulWidget {
  final ProductModel model;
  const ProductDetailsScreen({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Center(
                          child: SizedBox(
                            height: 40.h,
                            child: Image.asset(
                              widget.model.images[0],
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
                            widget.model.images.length,
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
                                      widget.model.images[index],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                spaceV(2.h),
                              ],
                            )
                                .animate()
                                .fadeIn(
                                  delay: Duration(milliseconds: 300 * index),
                                )
                                .scale(),
                          ),
                        )
                      ],
                    ),
                    spaceV(2.h),
                    Row(
                      children: [
                        SvgPicture.asset(
                          AppAssets.shopIcon,
                          color: Colors.grey.shade400,
                        ),
                        spaceH(2.w),
                        Text(
                          widget.model.productCategory,
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.grey.shade400,
                          ),
                        ),
                      ],
                    )
                        .animate()
                        .fade(duration: const Duration(milliseconds: 800))
                        .slideX(),
                    spaceV(1.h),
                    Text(
                      widget.model.name,
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w800,
                      ),
                    )
                        .animate(delay: const Duration(milliseconds: 800))
                        .fade(duration: const Duration(milliseconds: 800)),
                    spaceV(2.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.star_rounded,
                              color: Colors.amber,
                              size: 16.sp,
                            ),
                            spaceH(2.w),
                            Text(
                              '${widget.model.rating} Ratings',
                              style: TextStyle(
                                color: Colors.grey.shade500,
                              ),
                            )
                          ],
                        ),
                        Container(
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade500,
                            shape: BoxShape.circle,
                          ),
                        ),
                        Text(
                          '2.9k + Reviews',
                          style: TextStyle(
                            color: Colors.grey.shade500,
                          ),
                        ),
                        Container(
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade500,
                            shape: BoxShape.circle,
                          ),
                        ),
                        Text(
                          '2.3k + Sold',
                          style: TextStyle(
                            color: Colors.grey.shade500,
                          ),
                        ),
                      ],
                    ),
                    spaceV(2.h),
                    SizedBox(
                      height: 5.h,
                      child: TabBar(
                        labelColor: Colors.teal,
                        unselectedLabelColor: Colors.grey,
                        unselectedLabelStyle:
                            const TextStyle(color: Colors.grey),
                        controller: TabController(length: 2, vsync: this),
                        tabs: const [
                          Tab(
                            text: 'About Item',
                          ),
                          Tab(text: 'Review')
                        ],
                      ),
                    ),
                    spaceV(2.h),
                    Wrap(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Brand: ',
                              style: TextStyle(fontSize: 14.sp),
                            ),
                            Text(
                              'Palm Angels',
                              style: TextStyle(fontSize: 14.sp,fontFamily: w600),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          SafeArea(
            top: false,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              height: 8.h,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 20,
                    color: Colors.black.withOpacity(0.01),
                    offset: const Offset(0, -8),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(''),
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          color: Colors.black.withOpacity(0.1),
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 15.w,
                          height: 5.5.h,
                          decoration: BoxDecoration(
                            color: Colors.teal.shade300,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(5),
                              bottomLeft: Radius.circular(5),
                            ),
                          ),
                          child: Center(
                              child: SvgPicture.asset(
                            AppAssets.shoppingBagIcon,
                            color: Colors.white,
                          )),
                        ),
                        Container(
                          width: 25.w,
                          height: 5.5.h,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 0, 23, 80),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(5),
                              bottomRight: Radius.circular(5),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              'Buy Now',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ).animate(delay: const Duration(milliseconds: 800)).scale(
                        duration: const Duration(
                          milliseconds: 500,
                        ),
                        curve: Curves.easeOut,
                      ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
