import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sameplay/constants/app_colors.dart';
import 'package:sameplay/screens/circle_container.dart';
import '../constants/asset_paths.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
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
        title: Row(
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
              width: 10.w,
            ),
            const Text(
              "Raid: shadow legends",
            ),
          ],
        ),
        actions: [
          Image.asset("assets/images/drawer.png"),
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 25.h,
            ),
            Container(
              alignment: Alignment.center,
              height: 29.h,
              width: 175.w,
              decoration: const BoxDecoration(
                  color: AppColors.containerColor,
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: const Text(
                "Dman has joined",
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Container(
              alignment: Alignment.center,
              height: 29.h,
              width: 208.w,
              decoration: const BoxDecoration(
                  color: AppColors.containerColor,
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: const Text(
                "Mr james has joined",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const Expanded(child: SizedBox()),
            Container(
              height: 69.h,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: AppColors.containerColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(14),
                ),
              ),
              child: TextFormField(
                style: const TextStyle(color: AppColors.greyColor),
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 20),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(
                          0xff30AAE1,
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: const Image(
                        image: AssetImage("assets/images/send.png"),
                      ),
                    ),
                  ),
                  border: InputBorder.none,
                  hintText: "Type text here",
                  hintStyle: const TextStyle(
                    color: AppColors.greyColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
