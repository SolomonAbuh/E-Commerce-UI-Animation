import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
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
                  AppAssets.coinsIcon,
                  color: Colors.teal,
                ),
                label: 'home'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppAssets.ticketIcon,
                  color: Colors.teal,
                ),
                label: 'home'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppAssets.walletIcon,
                  color: Colors.teal,
                ),
                label: 'home'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppAssets.gearIcon,
                  color: Colors.teal,
                ),
                label: 'home'),
          ]),
    );
  }
}
