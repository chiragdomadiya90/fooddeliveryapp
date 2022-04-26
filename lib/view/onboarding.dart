import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fooddeliveryapp/common/text.dart';
import 'package:fooddeliveryapp/controller/provider.dart';
import 'package:fooddeliveryapp/view/login.dart';
import 'package:provider/provider.dart';

class OnBoarding extends StatefulWidget {
  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController(initialPage: 0);
    final provider = Provider.of<PageTranceController>(context, listen: false);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 670.h,
              child: PageView(
                physics: BouncingScrollPhysics(),
                controller: pageController,
                onPageChanged: (value) {
                  provider.pageTran(value, 1);
                },
                children: [Page1(), Page2()],
              ),
            ),
            InkWell(
              onTap: () {
                provider.isLastPage == true
                    ? Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login(),
                        ),
                      )
                    : pageController.nextPage(
                        duration: Duration(milliseconds: 600),
                        curve: Curves.easeIn,
                      );
              },
              child: Container(
                height: 67.h,
                width: 157.w,
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
                    child: Consumer<PageTranceController>(
                  builder: (context, value, child) => Ts(
                    text: value.isLastPage == true ? "Get Started" : 'Next',
                    weight: FontWeight.w900,
                    color: Colors.white,
                    size: 15.sp,
                  ),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(height: 500.h, child: SvgPicture.asset('assets/svg/2.svg')),
        SizedBox(
          height: 10.sp,
        ),
        Ts(
          text: 'Find Your Comfort',
          size: 22.sp,
          weight: FontWeight.w900,
        ),
        Ts(
          text: 'Food here',
          size: 22.sp,
          weight: FontWeight.w900,
        ),
        SizedBox(
          height: 10.sp,
        ),
        Ts(
          text: 'Here You Can find a chef or dish for every',
          size: 15.sp,
        ),
        Ts(
          text: 'taste and color Enjoy!',
          size: 15.sp,
        ),
      ],
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(height: 500.h, child: SvgPicture.asset('assets/svg/3.svg')),
        SizedBox(
          height: 10.sp,
        ),
        Ts(
          text: 'Food Ninja is Where Your',
          size: 22.sp,
          weight: FontWeight.w900,
        ),
        Ts(
          text: 'Comfort Food Lives',
          size: 22.sp,
          weight: FontWeight.w900,
        ),
        SizedBox(
          height: 10.sp,
        ),
        Ts(
          text: 'Enjoy fast and smooth food delivery at',
          size: 15.sp,
        ),
        Ts(
          text: 'your doorstep',
          size: 15.sp,
        ),
      ],
    );
  }
}
