import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sameplay/screens/LFG/create_Lfg.dart';
import 'package:sameplay/screens/LFG/past_LFG.dart';

class LFGTabbar extends StatefulWidget {
  const LFGTabbar({Key? key}) : super(key: key);

  @override
  State<LFGTabbar> createState() => _LFGTabbarState();
}

class _LFGTabbarState extends State<LFGTabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
          actions: [
            Image.asset("assets/images/drawer.png"),
          ],
          bottom: PreferredSize(
            preferredSize: Size(50.0, 50.0),
            child: Container(
              width: 250.0,
              child: TabBar(
                indicatorColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 3,
                indicatorPadding: const EdgeInsets.symmetric(horizontal: 12),
                tabs: [
                  Container(
                    height: 45.0,
                    child: Tab(
                      child: Text(
                        "Create LFG",
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontFamily: "Monsterrt",
                            color: Colors.grey,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  Container(
                    height: 45.0,
                    child: Tab(
                      child: Text(
                        "Post LFG",
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontFamily: "Monsterrt",
                            color: Colors.grey,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            LFG(),
            PastLFG(),
          ],
        ),
      ),
    );
  }
}
