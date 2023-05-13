import 'package:flutter/material.dart';
import 'package:project1/utils/app_colors.dart';
import 'package:project1/utils/my_size.dart';


class CustomIndicator extends StatelessWidget {
  bool isactive;
  CustomIndicator({super.key, this.isactive = false});

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(left: MySize.scaleFactorWidth * 6),
          child: Container(

            height: MySize.scaleFactorHeight * 5,
            width: MySize.scaleFactorWidth * 35,
            decoration: BoxDecoration(
                color: isactive
                    ? AppColors.themecolor
                    : AppColors.greyd8,
                borderRadius: BorderRadius.circular(3)
            ),
          ),
        ),
      ],
    );
  }
}