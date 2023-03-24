import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sameplay/common_widgets/svg_image.dart';
import 'package:sameplay/constants/app_colors.dart';
import 'package:sameplay/constants/asset_paths.dart';
import 'package:sameplay/screens/circle_container.dart';
import 'package:sameplay/widgets/Tappable_text_container.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset("assets/images/backarrow.png")),
        backgroundColor: Color(0xff070125),
        title: Text(
          "Profile",
          style: TextStyle(
              fontSize: 18.sp,
              fontFamily: "Monsterrt",
              color: Colors.white,
              fontWeight: FontWeight.w600),
        ),
        actions: [
          Image.asset("assets/images/drawer.png"),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 25.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: const [
              //     CircleContainer(imagePath: left_arrow),
              //     CircleContainer(imagePath: drawer),
              //   ],
              // ),
              SizedBox(
                height: 25.h,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    left: 120.w,
                    child: const SvgImage(
                      path: chat,
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  const CircleAvatar(
                    backgroundImage: AssetImage("assets/images/profpig.png"),
                    radius: 50,
                  ),
                  Positioned(
                    top: 85,
                    right: 12,
                    child: Container(
                      clipBehavior: Clip.none,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        "assets/images/online.png",
                      ),
                    ),
                  ),
                  Positioned(
                    top: 120.h,
                    left: 10.w,
                    child: const Text(
                      "Dman 1512",
                      style: TextStyle(
                        color: Color(0xffDADADA),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 45.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Image(
                    image: AssetImage(
                      "assets/images/medals.png",
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "Silver",
                    style: TextStyle(color: AppColors.whiteColor),
                  ),
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 2.h),
                        child: Image.asset("assets/images/youtube.png"),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      const Text(
                        "youtube.com/dman",
                        style:
                            TextStyle(color: AppColors.greyColor, fontSize: 14),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      regularBlueText("Update"),
                    ],
                  ),
                  const Text(
                    " Country",
                    style: TextStyle(color: AppColors.whiteColor, fontSize: 14),
                  ),
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 2.h),
                        child: Image.asset("assets/images/twitch.png"),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      const Text(
                        "twitch.com/dman",
                        style:
                            TextStyle(color: AppColors.greyColor, fontSize: 14),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      regularBlueText("Update"),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: regularBlueText("India"),
                  ),
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TappableTextContainer(
                    text: "Edit Profile",
                    onPress: () {},
                  ),
                  TappableTextContainer(
                    text: "Settings",
                    onPress: () {},
                  ),
                ],
              ),
              SizedBox(
                height: 55.h,
              ),
              TappableTextContainer(
                text: "Edit Profile",
                onPress: () {},
                width: double.infinity,
              ),
              SizedBox(
                height: 25.h,
              ),
              TappableTextContainer(
                text: "Settings",
                onPress: () {},
                width: double.infinity,
              ),
              SizedBox(
                height: 25.h,
              ),
              TappableTextContainer(
                text: "Delete Account",
                onPress: () {},
                width: double.infinity,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget regularBlueText(String text) {
  return Text(
    text,
    style: const TextStyle(fontSize: 14, color: Color(0xff30AAE1)),
  );
}
