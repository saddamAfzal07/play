import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateAnId extends StatefulWidget {
  const CreateAnId({Key? key}) : super(key: key);

  @override
  State<CreateAnId> createState() => _CreateAnIdState();
}

class _CreateAnIdState extends State<CreateAnId> {
  TextEditingController controller = TextEditingController();
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
                    height: 140.sp,
                  ),
                  Image.asset("assets/images/logomark.png"),
                  SizedBox(
                    height: 80.h,
                  ),
                  Text(
                    "Create a ID",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontFamily: "Monsterrt",
                      color: Colors.white,
                    ),
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
                            controller: controller,
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
                              hintText: 'Enter ID',
                              hintStyle: TextStyle(
                                color: Color(0xffDADADA),
                                fontSize: 18.0.sp,
                              ),
                            ),
                            validator:
                                RequiredValidator(errorText: "ID is required"),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 150.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                              ),
                              // color: Colors.white,
                              borderRadius: BorderRadius.circular(14)),
                        ),
                        SizedBox(
                          width: 18.w,
                        ),
                        Text(
                          "I am above 13 years and agree to\n privacy policy and TOS",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontFamily: "Monsterrt",
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: const Color(0xff30AAE1),
                        borderRadius: BorderRadius.circular(20)),
                    width: double.infinity,
                    height: 65.00,
                    child: const Text(
                      "Accept",
                      style: TextStyle(
                        fontSize: 18.00,
                        fontFamily: "Monsterrt",
                        color: Colors.white,
                      ),
                    ),
                  ),
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
