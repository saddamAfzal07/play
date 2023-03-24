import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sameplay/constants/app_colors.dart';
import 'package:sameplay/screens/circle_container.dart';
import 'package:sameplay/widgets/app_tab_bar.dart';
import '../constants/asset_paths.dart';

class TopRankScreen extends StatefulWidget {
  const TopRankScreen({Key? key}) : super(key: key);

  @override
  State<TopRankScreen> createState() => _TopRankScreenState();
}

class _TopRankScreenState extends State<TopRankScreen> {
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
          "Top Rank",
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
      body: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          const AppTabBar(),
          const SizedBox(
            height: 25,
          ),
          Expanded(
            child: ListView.separated(
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                itemBuilder: (context, index) => Row(
                      children: [
                        Text(
                          "0${index + 1}",
                          style: const TextStyle(
                              color: Colors.white, fontSize: 22),
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        Container(
                          width: 51.w,
                          height: 51.h,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image(
                            image: AssetImage(
                              modelData[index].image,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        Text(
                          modelData[index].name,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 18),
                        ),
                      ],
                    ),
                separatorBuilder: (context, index) => SizedBox(
                      height: 20.h,
                    ),
                itemCount: modelData.length),
          ),
          Container(
            decoration: BoxDecoration(
              color: AppColors.containerColor,
              borderRadius: BorderRadius.all(Radius.circular(18)),
            ),
            height: 44.h,
            width: 100.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                Icon(
                  Icons.arrow_forward_outlined,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
        ],
      ),
    );
  }
}

class TopRankModel {
  final String image;
  final String name;

  TopRankModel(this.image, this.name);
}

List<TopRankModel> modelData = [
  TopRankModel("assets/images/women.png", "Alice"),
  TopRankModel("assets/images/men.png", "Joshua"),
  TopRankModel("assets/images/men1.png", "Akira"),
  TopRankModel("assets/images/women.png", "Alice"),
  TopRankModel("assets/images/men.png", "Samantha"),
  TopRankModel("assets/images/women.png", "Alice"),
  TopRankModel("assets/images/men.png", "Joshua"),
  TopRankModel("assets/images/men1.png", "Akira"),
  TopRankModel("assets/images/women.png", "Alice"),
  TopRankModel("assets/images/men.png", "Samantha"),
];
