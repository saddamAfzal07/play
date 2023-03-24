import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sameplay/widgets/btn1.dart';

class LFG extends StatefulWidget {
  const LFG({Key? key}) : super(key: key);

  @override
  State<LFG> createState() => _LFGState();
}

class _LFGState extends State<LFG> {
  TextEditingController selectGame = TextEditingController();
  TextEditingController selectPlatform = TextEditingController();
  TextEditingController region = TextEditingController();

  TextEditingController playwithOrAgainst = TextEditingController();

  TextEditingController addMessage = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/images/logomarkbg.png",
          ),
          fit: BoxFit.fitHeight,
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 150.h,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      controller: selectGame,
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
                        hintText: 'Select Game',
                        hintStyle: TextStyle(
                          color: Color(0xffDADADA),
                          fontSize: 18.sp,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 21.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      controller: selectPlatform,
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
                        hintText: 'Select Platforms',
                        hintStyle: TextStyle(
                          color: Color(0xffDADADA),
                          fontSize: 18.sp,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 21.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      controller: selectPlatform,
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
                        hintText: 'Play with or Against',
                        hintStyle: TextStyle(
                          color: Color(0xffDADADA),
                          fontSize: 18.sp,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 21.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xff6B6B6B),
                          ),
                          borderRadius: BorderRadius.circular(20)),
                      height: 110,
                      child: TextField(
                        decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 20),
                            hintText: "Add Message",
                            hintStyle: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffDADADA),
                            ),
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 41.h,
                  ),
                ],
              ),
            ),
            GestureDetector(onTap: () {}, child: Button1(text: "Signp")),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    );
    // );
  }
}
