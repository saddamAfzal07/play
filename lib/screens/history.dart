import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sameplay/model/add_game.dart';
import 'package:sameplay/model/history.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
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
          "History",
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
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 25),
              child: Text(
                "Wins and Losses",
                style: TextStyle(
                    fontSize: 16.sp,
                    fontFamily: "Monsterrt",
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: AddHistoryData.length,
                itemBuilder: ((context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xff6B6B6B),
                            // color: Colors.white
                          ),
                          borderRadius: BorderRadius.circular(20)),
                      height: 85,
                      child: ListTile(
                          leading: Image.asset(
                              AddHistoryData[index].image.toString()),
                          title: Text(
                            AddGameData[index].title.toString(),
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontFamily: "Monsterrt",
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          subtitle: Text(
                            "${AddHistoryData[index].date} . Dmam",
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontFamily: "Monsterrt",
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          trailing: AddHistoryData[index].result == true
                              ? Text(
                                  "Win",
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontFamily: "Monsterrt",
                                      color: Color(0xff21A300),
                                      fontWeight: FontWeight.w600),
                                )
                              : Text(
                                  "Lost",
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontFamily: "Monsterrt",
                                      color: Color(0xffD70E0E),
                                      fontWeight: FontWeight.w600),
                                )),
                    ),
                  );
                })),
          ],
        ),
      ),
    );
  }
}
