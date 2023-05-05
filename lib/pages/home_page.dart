import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:money_point_take_home_assignment/constants/colors.dart';
import 'package:money_point_take_home_assignment/widgets/home_ad_on_icons.dart';
import 'package:money_point_take_home_assignment/widgets/home_sliver_app_bar.dart';
import 'package:money_point_take_home_assignment/widgets/product_grid.dart';
import 'package:sizer/sizer.dart';
import '../constants/app_assets.dart';
import '../widgets/app_spacer.dart';
import '../widgets/best_sale_product.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/home_carousel_slider.dart';

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
        backgroundColor: Colors.grey.shade100,
        bottomNavigationBar: const AppBottomNavBar(),
        body: const CustomScrollView(
          slivers: [
            HomeSliverAppBar(),
            ProductGrid(),
          ],
        ),
      ),
    );
  }
}
