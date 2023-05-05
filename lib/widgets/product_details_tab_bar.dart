import 'package:flutter/material.dart';
import 'package:money_point_take_home_assignment/constants/text_styles.dart';
import 'package:money_point_take_home_assignment/models/selection_model.dart';
import 'package:sizer/sizer.dart';

import '../constants/colors.dart';

class ProductDetailsTabBar extends StatefulWidget {
  const ProductDetailsTabBar({super.key});

  @override
  State<ProductDetailsTabBar> createState() => _ProductDetailsTabBarState();
}

class _ProductDetailsTabBarState extends State<ProductDetailsTabBar> {
  List<SelectionModel> modelList = [
    SelectionModel('About item', true),
    SelectionModel('Review', false),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 5.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Divider(
              height: 0,
              color: AppColors.greyLight.withOpacity(0.25),
              thickness: 2),
          ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      modelList.forEach((element) {
                        element.active = false;
                      });

                      modelList[index].active = true;
                      setState(() {});
                    },
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Text(
                          modelList[index].title,
                          style: AppTextStyles.mediumText.copyWith(
                            fontWeight: FontWeight.w600,
                            color: modelList[index].active
                                ? AppColors.primary
                                : AppColors.greyLight,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 2,
                            width: 15.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: modelList[index].active
                                  ? AppColors.primary
                                  : Colors.transparent,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
              separatorBuilder: (context, index) => const SizedBox(width: 10),
              itemCount: modelList.length),
        ],
      ),
    );
  }
}
