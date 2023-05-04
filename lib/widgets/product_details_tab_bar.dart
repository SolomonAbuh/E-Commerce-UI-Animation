import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';

class ProductDetailsTabBar extends StatefulWidget {
  const ProductDetailsTabBar({super.key});

  @override
  State<ProductDetailsTabBar> createState() => _ProductDetailsTabBarState();
}

class _ProductDetailsTabBarState extends State<ProductDetailsTabBar> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 5.h,
      child: TabBar(
        labelColor: Colors.teal,
        unselectedLabelColor: Colors.grey,
        unselectedLabelStyle: const TextStyle(color: Colors.grey),
        controller: TabController(length: 2, vsync: this),
        tabs: const [
          Tab(
            text: 'About Item',
          ),
          Tab(text: 'Review')
        ],
      ),
    );
  }
}
