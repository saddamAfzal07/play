import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sameplay/common_widgets/svg_image.dart';

import '../constants/app_colors.dart';

class  CircleContainer extends StatelessWidget {
  final String imagePath;
  const CircleContainer({required this.imagePath,Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.containerColor,
        shape: BoxShape.circle,
      ),
      width: 45.w,
      height: 45.h,
      child:  Padding(
        padding: const EdgeInsets.all(10.0),
        child: SvgImage(path:imagePath,),
      ),
    );
  }
}
