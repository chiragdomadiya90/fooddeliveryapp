import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'onboarding.dart';

class SplashScr extends StatefulWidget {
  const SplashScr({Key? key}) : super(key: key);

  @override
  State<SplashScr> createState() => _SplashScrState();
}

class _SplashScrState extends State<SplashScr> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => OnBoarding(),
          ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 304.h,
              width: 376.w,
              child: Image.asset(
                'assets/photo/Group 782.png',
                fit: BoxFit.fill,
              ),
            ),
            Container(
              height: 150.h,
              width: 185.w,
              // color: Colors.red,
              child: Image.asset('assets/photo/breakfast.png'),
            ),
            SizedBox(
              height: 10.sp,
            ),
            Text(
              'FoodNinja',
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
            Text(
              'Deliver Favorite Food',
              style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w900),
            ),
          ],
        ),
      ),
    );
  }
}
