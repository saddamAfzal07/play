import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sameplay/common_widgets/svg_image.dart';
import 'package:sameplay/constants/app_colors.dart';
import 'package:sameplay/screens/circle_container.dart';
import 'package:sameplay/screens/menu.dart';
import '../constants/asset_paths.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListView(
            children: [
              SizedBox(
                height: 25.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleContainer(imagePath: left_arrow),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MenuScreen()));
                      },
                      child: CircleContainer(imagePath: drawer)),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: const [
                      Text(
                        "Raid:Shadow\nlegend",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.greyColor,
                        ),
                      ),
                      //Divider(color: Colors.white,thickness: 2,),
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
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                height: 256.h,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: AppColors.darkGreenColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgImage(
                          path: "assets/images/x.svg",
                          width: 18.w,
                          height: 18.h,
                          color: AppColors.greyColor,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Container(
                            width: 51.w,
                            height: 51.h,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: const Image(
                              image: AssetImage(
                                "assets/images/Ellipse.png",
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        const Text(
                                          "Dman 1512",
                                          style: TextStyle(
                                              color: AppColors.whiteColor),
                                        ),
                                        SizedBox(
                                          width: 4.w,
                                        ),
                                        const Image(
                                          image: AssetImage(
                                              "assets/images/logo.png"),
                                        ),
                                      ],
                                    ),
                                    const Text(
                                      "USA",
                                      style:
                                          TextStyle(color: AppColors.greyColor),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Image(
                                      image: AssetImage(
                                        "assets/images/medals.png",
                                      ),
                                    ),
                                    SizedBox(
                                      width: 4.w,
                                    ),
                                    const Text(
                                      "Silver",
                                      style: TextStyle(
                                          color: AppColors.whiteColor),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: const Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Xbox,Play Station",
                          style: TextStyle(color: AppColors.whiteColor),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Container(
                      padding: const EdgeInsets.all(2),
                      alignment: Alignment.center,
                      width: 87.w,
                      height: 25.h,
                      decoration: const BoxDecoration(
                        color: AppColors.lightBlueBackgroundBoxColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(4),
                        ),
                      ),
                      child: const Text(
                        "Team Mate",
                        style: TextStyle(color: AppColors.whiteColor),
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Text(
                      "\" I will be a great Teammate \"",
                      style: TextStyle(
                          color: AppColors.whiteColor, fontSize: 18.sp),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 323.w,
                      height: 50.1.h,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.all(
                          Radius.circular(18),
                        ),
                        border: Border.all(
                          color: const Color(0xff30AAE1),
                        ),
                      ),
                      child: const Text(
                        "Join Lobby",
                        style: TextStyle(
                          color: Color(0xff30AAE1),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 70.h,
              ),
              Container(
                height: 256.h,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: AppColors.darkRedColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgImage(
                          path: "assets/images/x.svg",
                          width: 18.w,
                          height: 18.h,
                          color: AppColors.greyColor,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Container(
                            width: 51.w,
                            height: 51.h,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: const Image(
                              image: AssetImage(
                                "assets/images/Ellipse3.png",
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        const Text(
                                          "Sarah lance",
                                          style: TextStyle(
                                              color: AppColors.whiteColor),
                                        ),
                                        SizedBox(
                                          width: 4.w,
                                        ),
                                        const Image(
                                          image: AssetImage(
                                              "assets/images/logo.png"),
                                        ),
                                      ],
                                    ),
                                    const Text(
                                      "USA",
                                      style:
                                          TextStyle(color: AppColors.greyColor),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Image(
                                      image: AssetImage(
                                        "assets/images/medals.png",
                                      ),
                                    ),
                                    SizedBox(
                                      width: 4.w,
                                    ),
                                    const Text(
                                      "Silver",
                                      style: TextStyle(
                                          color: AppColors.whiteColor),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: const Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Xbox,Play Station",
                          style: TextStyle(color: AppColors.whiteColor),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Container(
                      padding: const EdgeInsets.all(2),
                      alignment: Alignment.center,
                      width: 87.w,
                      height: 25.h,
                      decoration: const BoxDecoration(
                        color: AppColors.lightBlueBackgroundBoxColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(4),
                        ),
                      ),
                      child: const Text(
                        "Team Mate",
                        style: TextStyle(color: AppColors.whiteColor),
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Text(
                      "\" Looking forward to fear fight \"",
                      style: TextStyle(
                        color: AppColors.whiteColor,
                        fontSize: 18.sp,
                      ),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 323.w,
                      height: 50.1.h,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(18),
                        ),
                        border: Border.all(
                          color: const Color(0xff30AAE1),
                        ),
                      ),
                      child: const Text(
                        "Join Lobby",
                        style: TextStyle(
                          color: Color(0xff30AAE1),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
