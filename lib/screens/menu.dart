import 'package:flutter/material.dart';
import 'package:sameplay/add_game.dart';
import 'package:sameplay/model/user_chat.dart';
import 'package:sameplay/screens/LFG/lfg_tabbar.dart';
import 'package:sameplay/screens/LFG/create_Lfg.dart';
import 'package:sameplay/screens/history.dart';
import 'package:sameplay/screens/top_rank_screen.dart';
import 'package:sameplay/screens/user_chat_screen.dart';
import 'package:sameplay/widgets/menu.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff070125),
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
          "Menu",
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                MenuWidget(
                  image: "assets/images/user.png",
                  title: "Profile",
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LFGTabbar()));
                  },
                  child: MenuWidget(
                    image: "assets/images/plus.png",
                    title: "Create Lfg",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AddGame()));
                  },
                  child: MenuWidget(
                    image: "assets/images/pluscircle.png",
                    title: "Add Game",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const History()));
                  },
                  child: MenuWidget(
                    image: "assets/images/checksquare.png",
                    title: "Game History",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TopRankScreen()));
                  },
                  child: MenuWidget(
                    image: "assets/images/award.png",
                    title: "Top Rank",
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => UserChats()));
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xff30AAE1),
                    ),
                    // color: const Color(0xff30AAE1),
                    borderRadius: BorderRadius.circular(20)),
                width: double.infinity,
                height: 65.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/logout.png"),
                    SizedBox(
                      width: 12.w,
                    ),
                    Text(
                      "Logout",
                      style: TextStyle(
                          fontSize: 21.sp,
                          fontFamily: "Monsterrt",
                          color: Color(0xff30AAE1),
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
