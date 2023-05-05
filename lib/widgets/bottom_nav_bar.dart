import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../constants/app_assets.dart';

class AppBottomNavBar extends StatelessWidget {
  const AppBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 12.h,
      child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppAssets.homeIcon,
                  height: 20,
                  width: 20,
                  color: Colors.teal,
                ),
                label: 'home'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppAssets.ticketIcon,
                  color: Colors.grey.shade400,
                ),
                label: 'home'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppAssets.walletIcon,
                  color: Colors.grey.shade400,
                ),
                label: 'home'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppAssets.gearIcon,
                  color: Colors.grey.shade400,
                ),
                label: 'home'),
          ]),
    );
  }
}
