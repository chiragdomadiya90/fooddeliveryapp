import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fooddeliveryapp/common/text.dart';

class Forgetpassword extends StatelessWidget {
  const Forgetpassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
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
              ),
              SizedBox(
                height: 15.sp,
              ),
              Ts(
                text: 'Forgot Password ?',
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
              SizedBox(
                height: 110.h,
                width: 350.w,
                child: Card(
                  elevation: 10.sp,
                  shape: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.sms,
                        color: Color(0xff53E88B),
                        size: 55.sp,
                      ),
                      SizedBox(
                        width: 15.sp,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Ts(
                            text: 'Via SMS :',
                            size: 18.sp,
                            color: Colors.grey,
                          ),
                          Ts(
                            text: '. . . . . . . . 4235',
                            size: 18.sp,
                            weight: FontWeight.w900,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.sp,
              ),
              SizedBox(
                height: 110.h,
                width: 350.w,
                child: Card(
                  elevation: 10.sp,
                  shape: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.email,
                        color: Color(0xff53E88B),
                        size: 55.sp,
                      ),
                      SizedBox(
                        width: 15.sp,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Ts(
                            text: 'Via email :',
                            size: 18.sp,
                            color: Colors.grey,
                          ),
                          Ts(
                            text: '. . . . . . . . @gmail.com',
                            size: 18.sp,
                            weight: FontWeight.w900,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
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
    );
  }
}
