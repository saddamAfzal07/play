import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/app_colors.dart';

class AppTabBar extends  StatelessWidget {
  const AppTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            const Text(
              "Raid:Shadow\nlegend",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.greyColor,
              ),
            ),
            SizedBox(
              width: 40.w,
              child: const Divider(
                color: Colors.white,
                thickness: 2,
              ),
            ),
          ],
        ),
        const Text(
          "Mafia City",
          style: TextStyle(
            color: AppColors.greyColor,
          ),
        ),
        const Text(
          "Hero Wars",
          style: TextStyle(
            color: AppColors.greyColor,
          ),
        ),
      ],
    );
  }
}
