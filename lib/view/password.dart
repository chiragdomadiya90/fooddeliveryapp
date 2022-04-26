import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fooddeliveryapp/common/text.dart';
import 'package:fooddeliveryapp/view/spalashscr.dart';

class Password extends StatefulWidget {
  const Password({Key? key}) : super(key: key);

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  final _formKey = GlobalKey<FormState>();
  final _new = TextEditingController();
  final _confirm = TextEditingController();
  bool visable = true;
  bool visable1 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 55.h,
                  width: 55.h,
                  decoration: BoxDecoration(
                    color: Color(0xffffebee),
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  child: Icon(
                    Icons.arrow_back_ios_outlined,
                    color: Color(0xffDA6317),
                  ),
                ),
                SizedBox(
                  height: 15.sp,
                ),
                Ts(
                  text: 'Reset your password\nhere',
                  size: 28.sp,
                  height: 1.5.sp,
                  weight: FontWeight.w900,
                ),
                SizedBox(
                  height: 15.sp,
                ),
                Ts(
                  text:
                      'Select Which contact details should we\nuse to reset your password',
                  size: 15.sp,
                  height: 1.5.sp,
                ),
                SizedBox(
                  height: 20.sp,
                ),
                TextFormField(
                  controller: _new,
                  obscureText: visable1,
                  maxLength: 10,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    counter: Offstage(),
                    suffixIcon: IconButton(
                        splashRadius: 20,
                        onPressed: () {
                          setState(
                            () {
                              visable1 = !visable1;
                            },
                          );
                        },
                        icon: Icon(
                          Icons.visibility,
                          color: visable1 == false
                              ? Colors.grey
                              : Color(0xff15BE77),
                        )),
                    border: InputBorder.none,
                    fillColor: Colors.grey.shade300,
                    filled: true,
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.grey),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xff53E88B), width: 3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.transparent, width: 3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Password doesn't match";
                    }
                  },
                ),
                SizedBox(
                  height: 10.sp,
                ),
                TextFormField(
                  controller: _confirm,
                  obscureText: visable,
                  maxLength: 10,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    counter: Offstage(),
                    suffixIcon: IconButton(
                        splashRadius: 20,
                        onPressed: () {
                          setState(
                            () {
                              visable = !visable;
                            },
                          );
                        },
                        icon: Icon(
                          Icons.visibility,
                          color: visable == false
                              ? Colors.grey
                              : Color(0xff15BE77),
                        )),
                    border: InputBorder.none,
                    fillColor: Colors.grey.shade300,
                    filled: true,
                    hintText: 'Confirm Password',
                    hintStyle: TextStyle(color: Colors.grey),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xff53E88B), width: 3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.transparent, width: 3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Password doesn't match";
                    }
                  },
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SplashScr(),
                            ),
                          );
                        }
                      },
                      child: Container(
                        height: 67.h,
                        width: 175.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          gradient: LinearGradient(
                            colors: const [
                              Color(0xff53E88B),
                              Color(0xff15BE77),
                            ],
                          ),
                        ),
                        child: Center(
                          child: Ts(
                            text: 'Next',
                            weight: FontWeight.w900,
                            color: Colors.white,
                            size: 18.sp,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.sp,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
