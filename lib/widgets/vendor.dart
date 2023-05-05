import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:money_point_take_home_assignment/constants/text_styles.dart';
import 'package:money_point_take_home_assignment/models/product_model.dart';
import 'package:sizer/sizer.dart';
import '../constants/app_assets.dart';
import '../constants/colors.dart';
import 'app_spacer.dart';

class Vendor extends StatelessWidget {
  final ProductModel model;
  const Vendor({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          AppAssets.shopIcon,
          color: AppColors.greyLight,
        ),
        spaceH(2.w),
        Text(
          model.productCategory,
          style: AppTextStyles.mediumText.copyWith(
            color: AppColors.greyLight,
          ),
        ),
      ],
    ).animate().fade(duration: const Duration(milliseconds: 800)).slideX();
  }
}
