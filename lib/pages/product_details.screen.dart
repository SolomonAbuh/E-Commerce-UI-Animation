import 'package:flutter/material.dart';
import 'package:money_point_take_home_assignment/models/product_model.dart';
import 'package:money_point_take_home_assignment/widgets/app_spacer.dart';
import 'package:money_point_take_home_assignment/widgets/product_description.dart';
import 'package:money_point_take_home_assignment/widgets/product_details_pictures.dart';
import 'package:money_point_take_home_assignment/widgets/product_shipping_info.dart';
import 'package:money_point_take_home_assignment/widgets/product_title.dart';
import 'package:money_point_take_home_assignment/widgets/review_and_ratings.dart';
import 'package:sizer/sizer.dart';
import '../constants/colors.dart';
import '../widgets/about_items.dart';
import '../widgets/bottom_summary.dart';
import '../widgets/product_details_app_bar.dart';
import '../widgets/product_details_tab_bar.dart';
import '../widgets/product_shop_info.dart';
import '../widgets/product_stats.dart';
import '../widgets/vendor.dart';

class ProductDetailsScreen extends StatelessWidget {
  final ProductModel model;
  const ProductDetailsScreen({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: productDetailsAppBar(),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProductDetailsPicture(model: model),
                    spaceV(2.h),
                    Vendor(model: model),
                    spaceV(1.h),
                    ProductTitle(model: model),
                    spaceV(3.h),
                    ProductStats(model: model),
                    spaceV(3.h),
                    const ProductDetailsTabBar(),
                    spaceV(3.5.h),
                    AboutItems(
                      model: model,
                    ),
                    Divider(height: 5.h, color: AppColors.greyLight),
                    const ProductDescription(),
                    Divider(height: 5.h, color: AppColors.greyLight),
                    const ProductShippingInfo(),
                    Divider(height: 5.h, color: AppColors.greyLight),
                    const ProductShopInfo(),
                    Divider(height: 5.h, color: AppColors.greyLight),
                   ReviewAndRatings(model:  model),
                    Divider(height: 5.h, color: AppColors.greyLight),
                  ],
                ),
              ),
            ),
          ),
          BottomSummary(
            model: model,
          ),
        ],
      ),
    );
  }
}
