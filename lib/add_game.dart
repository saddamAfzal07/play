import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sameplay/model/add_game.dart';
import 'package:sameplay/screens/menu.dart';

class AddGame extends StatefulWidget {
  const AddGame({Key? key}) : super(key: key);

  @override
  State<AddGame> createState() => _AddGameState();
}

class _AddGameState extends State<AddGame> {
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
          "Add Game",
          style: TextStyle(
              fontSize: 18.sp,
              fontFamily: "Monsterrt",
              color: Colors.white,
              fontWeight: FontWeight.w600),
        ),
        actions: [
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MenuScreen()));
              },
              child: Image.asset("assets/images/drawer.png")),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xff6B6B6B),
                      // color: Colors.white
                    ),
                    borderRadius: BorderRadius.circular(20)),
                height: 50,
                child: Row(
                  children: [
                    Expanded(
                        child: TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 20),
                          hintText: "Search for games name, cretor etc.... ",
                          hintStyle: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffDADADA),
                          ),
                          border: InputBorder.none),
                    )),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Image.asset("assets/images/search.png"),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 35, bottom: 25),
                child: Text(
                  "Recommended Games",
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontFamily: "Monsterrt",
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: AddGameData.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ListTile(
                        leading: Image.asset(
                          AddGameData[index].image.toString(),
                          height: 200,
                        ),
                        subtitle: Text(
                          AddGameData[index].title.toString(),
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontFamily: "Monsterrt",
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
