import 'package:flutter/material.dart';
import 'package:sameplay/widgets/btn1.dart';
import 'package:sameplay/widgets/btn2.dart';
import 'package:sameplay/screens/auth/create_an_id.dart';
import 'package:sameplay/screens/auth/login.dart';
import 'package:sameplay/screens/auth/signup.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Authentication extends StatefulWidget {
  const Authentication({Key? key}) : super(key: key);

  @override
  State<Authentication> createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff070125),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/logomarkbg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 140.h,
                ),
                Image.asset("assets/images/logomark.png"),
              ],
            ),
            Column(
              children: [
                Text(
                  "Find teammates or\n opponents",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 22.sp,
                      fontFamily: "Monsterrt",
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 25.h,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignUp()));
                    },
                    child: Button1(
                      text: "Signup",
                    )),
                SizedBox(
                  height: 20.h,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: Button2(text: "Login")),
                SizedBox(
                  height: 20.h,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
