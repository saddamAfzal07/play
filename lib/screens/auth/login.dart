import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:sameplay/widgets/btn1.dart';
import 'package:sameplay/screens/bottom_tab_bar_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff070125),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/logomarkbg.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 130.h,
                  ),
                  Image.asset("assets/images/logomark.png"),
                  SizedBox(
                    height: 80.h,
                  ),
                  Text(
                    "Log In ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 24.sp,
                        fontFamily: "Monsterrt",
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: TextFormField(
                            controller: email,
                            decoration: InputDecoration(
                              // contentPadding: EdgeInsets.only(left: 10),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide(),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    20.0,
                                  ),
                                ),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xff6B6B6B),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    20.0,
                                  ),
                                ),
                              ),
                              hintText: 'Enter Email',
                              hintStyle: TextStyle(
                                color: Color(0xffDADADA),
                                fontSize: 18.sp,
                              ),
                            ),
                            validator: RequiredValidator(
                                errorText: "Email is required"),
                          ),
                        ),
                        SizedBox(
                          height: 24.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: TextFormField(
                            controller: password,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(
                                borderSide: BorderSide(),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    20.0,
                                  ),
                                ),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xff6B6B6B),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    20.0,
                                  ),
                                ),
                              ),
                              hintText: 'Enter Password',
                              hintStyle: TextStyle(
                                color: Color(0xffDADADA),
                                fontSize: 18.sp,
                              ),
                            ),
                            validator: RequiredValidator(
                                errorText: "Password is required"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    child: Padding(
                      padding: EdgeInsets.only(top: 10, right: 20),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontFamily: "Monsterrt",
                              color: Color(0xfF30AAE1),
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 110.h,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BottomTabBarScreen()));
                      },
                      child: Button1(text: "Login")),
                  SizedBox(
                    height: 20.h,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
