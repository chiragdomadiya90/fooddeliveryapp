import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fooddeliveryapp/common/text.dart';

class UploadPreview extends StatelessWidget {
  const UploadPreview({Key? key}) : super(key: key);

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
                text: 'Upload Your Photo\nProfile',
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 240.h,
                      width: 250.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.r),
                          color: Colors.grey.shade500,
                          image: DecorationImage(image: AssetImage(''))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: CircleAvatar(
                              radius: 15.r,
                              backgroundColor: Colors.black,
                              child: Icon(
                                Icons.close,
                                color: Colors.white,
                                size: 18,
                              ),
                            ),
                          )
                        ],
                      )),
                ],
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
