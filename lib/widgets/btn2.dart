import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Button2 extends StatefulWidget {
  String text;
  Button2({Key? key, required this.text}) : super(key: key);

  @override
  State<Button2> createState() => _Button2State();
}

class _Button2State extends State<Button2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xff30AAE1),
          ),
          // color: const Color(0xff30AAE1),
          borderRadius: BorderRadius.circular(20)),
      width: double.infinity,
      height: 65.00,
      child: Text(
        widget.text,
        style: TextStyle(
          fontSize: 18.sp,
          fontFamily: "Monsterrt",
          color: Color(0xff30AAE1),
        ),
      ),
    );
  }
}
