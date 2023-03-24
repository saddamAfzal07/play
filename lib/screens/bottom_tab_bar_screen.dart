import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sameplay/constants/app_colors.dart';
import 'package:sameplay/constants/asset_paths.dart';
import 'package:sameplay/screens/bottom_tab_widget.dart';
import 'package:sameplay/screens/chat_screen.dart';
import 'package:sameplay/screens/feed_screen.dart';
import 'package:sameplay/screens/game_screen.dart';
import 'package:sameplay/screens/profile_screen.dart';
import 'package:sameplay/screens/user_chat_screen.dart';

class BottomTabBarScreen extends StatefulWidget {
  const BottomTabBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomTabBarScreen> createState() => _BottomTabBarScreenState();
}

class _BottomTabBarScreenState extends State<BottomTabBarScreen> {
  int screenIndex = 0;
  List pages = <Widget>[
    const GameScreen(),
    const ProfileScreen(),
    const UserChats(),
    const FeedScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[screenIndex],
      
    );
  }
}
