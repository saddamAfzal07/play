import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuWidget extends StatefulWidget {
  String image;
  String title;
  MenuWidget({Key? key, required this.image, required this.title})
      : super(key: key);

  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40),
      child: Row(
        children: [
          Image.asset(widget.image),
          SizedBox(
            width: 18.w,
          ),
          Text(
            widget.title,
            style: TextStyle(
                fontSize: 21.sp,
                fontFamily: "Monsterrt",
                color: Colors.white,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
