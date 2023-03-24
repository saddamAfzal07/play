import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/app_colors.dart';

class TappableTextContainer extends StatelessWidget {
  final String text;
  final double height;
  final double width;
  final VoidCallback onPress;

  const TappableTextContainer(
      {Key? key,
      required this.text,
      this.height = 55,
      this.width = 168,
      required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: height.h,
        width: width.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12),),
          border: Border.all(
            color: AppColors.lightBlueBackgroundBoxColor,
          ),
        ),
        child: Center(
            child: Text(
          text,
          style: const TextStyle(
            color: AppColors.lightBlueBackgroundBoxColor,
          ),
        )),
      ),
    );
  }
}
