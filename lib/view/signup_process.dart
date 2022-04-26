import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fooddeliveryapp/common/text.dart';
import 'package:fooddeliveryapp/view/spalashscr.dart';

class SignUpProcess extends StatelessWidget {
  const SignUpProcess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final _mob = TextEditingController();
    final _first = TextEditingController();
    final _last = TextEditingController();
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
                  text: 'Fill in Your bio to get\nStarted',
                  size: 28.sp,
                  height: 1.5.sp,
                  weight: FontWeight.w900,
                ),
                SizedBox(
                  height: 15.sp,
                ),
                Ts(
                  text:
                      'This data will be displayed in your account\nprofile for security.',
                  size: 15.sp,
                  height: 1.5.sp,
                ),
                SizedBox(
                  height: 20.sp,
                ),
                TextFormField(
                  controller: _first,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    fillColor: Colors.grey.shade300,
                    filled: true,
                    hintText: 'First Name',
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
                      return "First Name can't be Empty";
                    }
                  },
                ),
                SizedBox(
                  height: 20.sp,
                ),
                TextFormField(
                  controller: _last,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    fillColor: Colors.grey.shade300,
                    filled: true,
                    hintText: 'Last Name',
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
                      return "Last Name can't be Empty";
                    }
                  },
                ),
                SizedBox(
                  height: 20.sp,
                ),
                TextFormField(
                  controller: _mob,
                  maxLength: 10,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    counter: Offstage(),
                    fillColor: Colors.grey.shade300,
                    filled: true,
                    hintText: 'Mobile Number',
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
                      return "Mobile Number can't be Empty";
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
