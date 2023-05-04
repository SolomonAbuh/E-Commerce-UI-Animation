import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:money_point_take_home_assignment/widgets/home_carousel_slider.dart';

import '../widgets/bottom_nav_bar.dart';

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
        body: Column(
          children: const [
            HomeCarouselSlider(),
           
          ],
        ),
        bottomNavigationBar: const AppBottomNavBar(),
      ),
    );
  }
}
