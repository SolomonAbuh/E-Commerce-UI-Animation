import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:money_point_take_home_assignment/constants/app_assets.dart';
import 'package:money_point_take_home_assignment/widgets/app_spacer.dart';
import 'package:money_point_take_home_assignment/widgets/home_carousel_slider.dart';
import 'package:money_point_take_home_assignment/widgets/product_card.dart';
import 'package:sizer/sizer.dart';

import '../data/local_data.dart';
import '../widgets/best_sale_product.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: const AppBottomNavBar(),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              title: const SearchBar(),
              toolbarHeight: 10.h,
              collapsedHeight: 16.h,
              pinned: true,
              expandedHeight: 57.h,
              flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.none,
                  titlePadding: EdgeInsets.zero,
                  expandedTitleScale: 1,
                  title: const BestSaleProduct(),
                  background: Column(
                    children: [
                      const HomeCarouselSlider(),
                      SizedBox(
                          height: 15.h,
                          child: Center(
                            child: ListView.separated(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: tabItems.length,
                                itemBuilder: (context, index) {
                                  return Column(
                                    children: [
                                      spaceV(2.h),
                                      Container(
                                        padding: EdgeInsets.all(2.h),
                                        height: 7.h,
                                        width: 7.h,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 10,
                                                color: Colors.black
                                                    .withOpacity(0.07),
                                                offset: const Offset(0, 1),
                                              )
                                            ]),
                                        child: SvgPicture.asset(
                                          tabItems[index].iconAsset,
                                          fit: BoxFit.fitHeight,
                                          color: Colors.blueGrey.shade400,
                                        ),
                                      ).animate().fadeIn().slideX(),
                                      spaceV(2.h),
                                      Text(
                                        (tabItems[index].title),
                                        style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 10.sp,
                                        ),
                                      ),
                                    ],
                                  );
                                },
                                separatorBuilder: (context, index) {
                                  return spaceH(4.w);
                                }),
                          )),
                    ],
                  )),
              // flexibleSpace: HomeCarouselSlider(),
            ),
            SliverPadding(
              padding: EdgeInsets.only(left: 5.w, right: 5.w, bottom: 3.h),
              sliver: SliverGrid.count(
                childAspectRatio: 0.080.h,
                crossAxisCount: 2,
                crossAxisSpacing: 3.w,
                mainAxisSpacing: 1.5.h,
                children: List.generate(
                  productList.length,
                  (index) => ProductCard(
                    model: productList[index],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
