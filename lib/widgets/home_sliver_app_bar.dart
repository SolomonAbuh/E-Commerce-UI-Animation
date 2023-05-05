import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../constants/app_assets.dart';
import 'app_spacer.dart';
import 'best_sale_product.dart';
import 'home_ad_on_icons.dart';
import 'home_carousel_slider.dart';

class HomeSliverAppBar extends StatelessWidget {
  const HomeSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      titleSpacing: 0,
      title: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 1.h),
        child: Row(
          children: [
            Expanded(
                child: Container(
              padding: EdgeInsets.symmetric(horizontal: 3.w),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueGrey.shade400),
                  borderRadius: BorderRadius.circular(8)),
              child: Row(
                children: [
                  SvgPicture.asset(
                    AppAssets.searchIcon,
                    color: Colors.blueGrey.shade400,
                  ),
                  Expanded(
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.blueGrey.shade800,
                          fontSize: 12.sp),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 3.w),
                        hintText: 'Search',
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Colors.blueGrey.shade400,
                        ),
                        border: const OutlineInputBorder(
                            borderSide: BorderSide.none),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide.none),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide.none),
                      ),
                    ),
                  )
                ],
              ),
            )),
            spaceH(5.w),
            SvgPicture.asset(
              AppAssets.shoppingBagIcon,
              color: Colors.blueGrey.shade600,
            ),
            spaceH(5.w),
            SvgPicture.asset(
              AppAssets.shoppingBagIcon,
              color: Colors.blueGrey.shade600,
            ),
          ],
        ),
      )
          .animate()
          .fadeIn(
            duration: const Duration(milliseconds: 1000),
          )
          .scale(),
      toolbarHeight: 10.h,
      collapsedHeight: 18.h,
      pinned: true,
      expandedHeight: MediaQuery.of(context).size.height < 700 ? 60.h : 53.h,
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.none,
        titlePadding: EdgeInsets.zero,
        expandedTitleScale: 1,
        title: const BestSaleProduct(),
        background: Column(
          children: const [
            HomeCarouselSlider(),
            HomeAdOnIcons(),
          ],
        ),
      ),
      // flexibleSpace: HomeCarouselSlider(),
    );
  }
}
