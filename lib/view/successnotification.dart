import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fooddeliveryapp/common/text.dart';

class SuccessNotification extends StatelessWidget {
  const SuccessNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                height: 550.h,
                width: 376.w,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/photo/Group 782.png',
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 220.sp,
                    ),
                    Container(
                      height: 165.h,
                      width: 175.w,
                      // color: Colors.red,
                      child: Image.asset('assets/photo/10.png'),
                    ),
                    SizedBox(
                      height: 10.sp,
                    ),
                    Text(
                      'Congratulation !',
                      style: TextStyle(
                        fontSize: 35.sp,
                        fontWeight: FontWeight.w900,
                        foreground: Paint()
                          ..shader = LinearGradient(colors: [
                            Color(0xff02f993),
                            Colors.grey,
                          ]).createShader(
                            Rect.fromLTWH(150, 30, 200, 70),
                          ),
                      ),
                    ),
                    SizedBox(
                      height: 10.sp,
                    ),
                    Text(
                      'Password reset successful',
                      style: TextStyle(
                          fontSize: 22.sp, fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
              ),
            ),
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
                    text: 'Back',
                    weight: FontWeight.w900,
                    color: Colors.white,
                    size: 18.sp,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.sp,
            ),
          ],
        ),
      ),
    );
  }
}
