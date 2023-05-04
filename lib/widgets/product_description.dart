import 'package:flutter/material.dart';
import 'package:money_point_take_home_assignment/widgets/app_spacer.dart';
import 'package:sizer/sizer.dart';

class ProductDescription extends StatefulWidget {
  const ProductDescription({super.key});

  @override
  State<ProductDescription> createState() => _ProductDescriptionState();
}

class _ProductDescriptionState extends State<ProductDescription> {
  String firstHalf = ' ';
  String secondHalf = ' ';
  String descriptText = '• midnight blue'
      '\n• logo patch to the front'
      '\n• embroidered logo at the chest'
      '\n• logo patch to the rear'
      '\n• sailor collar'
      '\n• front press-stud fastening'
      '\n• two front jetted pockets'
      '\n• long sleeves'
      '\n• ribbed cuffs and hem'
      '\n\n Chat us if there is anything you need to ask about the product :)';

  bool flag = true;

  @override
  void initState() {
    if (descriptText.length > 50) {
      firstHalf = descriptText.substring(0, 50);
      secondHalf = descriptText.substring(50, descriptText.length);
    } else {
      firstHalf = descriptText;
      secondHalf = "";
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Description: ',
          style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
        ),
        spaceV(2.h),
        secondHalf.isEmpty
            ? Padding(
                padding: EdgeInsets.only(left: 5.w),
                child: Text(firstHalf),
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 5.w),
                    child: Text(
                      flag ? ("$firstHalf...") : (firstHalf + secondHalf),
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: Colors.grey.shade500,
                      ),
                    ),
                  ),
                  spaceV(3.h),
                  InkWell(
                    onTap: () {
                      setState(() {
                        flag = !flag;
                      });
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          flag ? "show more" : "show less",
                          style: TextStyle(
                            color: Colors.teal,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        spaceH(2.w),
                        Icon(
                          flag
                              ? Icons.keyboard_arrow_down
                              : Icons.keyboard_arrow_up,
                          color: Colors.teal,
                        )
                      ],
                    ),
                  ),
                ],
              ),
      ],
    );
  }
}
