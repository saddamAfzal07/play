import 'package:flutter/material.dart';
import 'package:sameplay/model/add_game.dart';
import 'package:sameplay/model/user_chat.dart';
import 'package:sameplay/screens/chat_screen.dart';
import 'package:sameplay/screens/menu.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserChats extends StatefulWidget {
  const UserChats({Key? key}) : super(key: key);

  @override
  State<UserChats> createState() => _UserChatsState();
}

class _UserChatsState extends State<UserChats> {
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
          "Chats",
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
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 35, bottom: 25),
              child: Text(
                "Conversation",
                style: TextStyle(
                    fontSize: 16.sp,
                    fontFamily: "Monsterrt",
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: chats.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xff6B6B6B),
                            // color: Colors.white
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      child: ListTile(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ChatScreen()));
                        },
                        // tileColor: Colors.grey,
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(
                            chats[index].image.toString(),
                          ),
                        ),
                        title: Text(
                          chats[index].title.toString(),
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontFamily: "Monsterrt",
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                        subtitle: Text(
                          chats[index].description.toString(),
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: "Monsterrt",
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                        trailing: Text(
                          chats[index].time.toString(),
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: "Monsterrt",
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
