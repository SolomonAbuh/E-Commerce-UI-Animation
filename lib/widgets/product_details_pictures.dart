import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:money_point_take_home_assignment/models/product_model.dart';
import 'package:sizer/sizer.dart';
import '../constants/colors.dart';
import '../models/selection_model.dart';
import 'app_spacer.dart';

class ProductDetailsPicture extends StatefulWidget {
  final ProductModel model;
  const ProductDetailsPicture({super.key, required this.model});

  @override
  State<ProductDetailsPicture> createState() => _ProductDetailsPictureState();
}

class _ProductDetailsPictureState extends State<ProductDetailsPicture> {
  List<SelectionModel> pictureSelections = [];
  String mainPicture = '';

  void addPictures(List<String> imageList) {
    for (var i = 0; i < imageList.length; i++) {
      pictureSelections
          .add(SelectionModel(imageList[i], i == 0 ? true : false));
    }
  }

  void getMainPic(List<SelectionModel> imageList) {
    for (var element in imageList) {
      if (element.active == true) {
        mainPicture = element.title;
      }
    }
  }

  @override
  void initState() {
    super.initState();
    addPictures(widget.model.images);
    getMainPic(pictureSelections);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: SizedBox(
            height: 40.h,
            child: Image.asset(mainPicture),
          )
              .animate()
              .slideY(
                  begin: 10,
                  duration: const Duration(
                    milliseconds: 800,
                  ),
                  curve: Curves.easeOut)
              .fadeIn(
                begin: 0.1,
                delay: const Duration(milliseconds: 600),
              )
              .moveX(end: 30),
        ),
        Column(
          children: List.generate(
            widget.model.images.length,
            (index) => Column(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      for (var element in pictureSelections) {
                        element.active = false;
                      }
                      mainPicture = pictureSelections[index].title;
                      pictureSelections[index].active = true;
                    });
                  },
                  child: Container(
                    height: 6.h,
                    width: 6.h,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          color: Colors.black.withOpacity(0.2),
                          offset: const Offset(0, 10),
                        )
                      ],
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: pictureSelections[index].active
                            ? AppColors.primary
                            : Colors.transparent,
                        width: 3,
                      ),
                    ),
                    child: ClipRRect(
                      child: Image.asset(
                        pictureSelections[index].title,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                spaceV(2.h),
              ],
            )
                .animate()
                .fadeIn(
                  delay: Duration(milliseconds: 300 * index),
                )
                .scale(),
          ),
        )
     
      ],
    );
  }
}
