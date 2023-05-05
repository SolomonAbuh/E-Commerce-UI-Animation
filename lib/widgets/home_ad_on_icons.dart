import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../constants/text_styles.dart';
import '../data/local_data.dart';
import 'app_spacer.dart';

class HomeAdOnIcons extends StatelessWidget {
  const HomeAdOnIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade100,
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
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            color: Colors.black.withOpacity(0.07),
                            offset: const Offset(0, 1),
                          )
                        ]),
                    child: SvgPicture.asset(
                      tabItems[index].iconAsset,
                      fit: BoxFit.fitHeight,
                      color: Colors.blueGrey.shade400,
                    ),
                  )
                      .animate(
                        delay: Duration(
                          milliseconds: 400 * index,
                        ),
                      )
                      .fadeIn()
                      .slideX(curve: Curves.easeOut),
                  spaceV(2.h),
                  Text(
                    (tabItems[index].title),
                    style: AppTextStyles.verySmallText,
                  ),
                ],
              );
            },
            separatorBuilder: (context, index) {
              return spaceH(4.w);
            }),
      ),
    );
  }
}
