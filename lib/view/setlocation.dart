import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fooddeliveryapp/common/text.dart';

class SetLocation extends StatelessWidget {
  const SetLocation({Key? key}) : super(key: key);

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
                text: 'Set Your Location',
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
              SizedBox(
                height: 150.w,
                width: 400.h,
                child: Card(
                  elevation: 10,
                  shape: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(15.r)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 20.r,
                              backgroundColor: Colors.orangeAccent,
                              child: Icon(
                                Icons.location_on,
                                color: Colors.deepOrange,
                                size: 25.sp,
                              ),
                            ),
                            SizedBox(
                              width: 10.sp,
                            ),
                            Ts(
                              text: 'Your Location',
                              size: 17.sp,
                              weight: FontWeight.w900,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          height: 57.h,
                          width: 300.w,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          child: Center(
                            child: Ts(
                              text: 'Set Location',
                              size: 18.sp,
                              weight: FontWeight.w900,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10.sp,
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
