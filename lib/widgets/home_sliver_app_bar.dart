import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:money_point_take_home_assignment/widgets/search_bar.dart';
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
      title:SearchBar(),
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
