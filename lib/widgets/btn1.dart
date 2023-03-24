import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Button1 extends StatefulWidget {
  String text;
  Button1({Key? key, required this.text}) : super(key: key);

  @override
  State<Button1> createState() => _Button1State();
}

class _Button1State extends State<Button1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: const Color(0xff30AAE1),
          borderRadius: BorderRadius.circular(20)),
      width: double.infinity,
      height: 65.00,
      child: Text(
        widget.text,
        style: TextStyle(
          fontSize: 18.sp,
          fontFamily: "Monsterrt",
          color: Colors.white,
        ),
      ),
    );
  }
}
