import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fooddeliveryapp/common/text.dart';
import 'package:fooddeliveryapp/firebase%20service/google_service.dart';
import 'package:fooddeliveryapp/firebase_service/firebase_auth_service.dart';
import 'package:fooddeliveryapp/view/payment.dart';
import 'package:fooddeliveryapp/view/spalashscr.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final _email = TextEditingController();
  final _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _formKey,
        child: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Container(
                  height: 340.h,
                  width: 376.w,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/photo/Group 782.png'),
                        fit: BoxFit.fill),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 14.sp,
                      ),
                      Container(
                        height: 150.h,
                        width: 185.w,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/photo/breakfast.png'),
                              fit: BoxFit.fill),
                        ),
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
                            ..shader = LinearGradient(colors: const [
                              Color(0xff02f993),
                              Colors.grey,
                            ]).createShader(
                              Rect.fromLTWH(150, 30, 200, 70),
                            ),
                        ),
                      ),
                      Text(
                        'Deliver Favorite Food',
                        style: TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        height: 35.sp,
                      ),
                      Text(
                        'Login To Your Account',
                        style: TextStyle(
                            fontSize: 22.sp, fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Expanded(
                    child: Column(
                      children: [
                        Container(
                          height: 67.h,
                          width: 325.w,
                          decoration: BoxDecoration(
                            color: Color(0xffF4F4F4),
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          child: Center(
                            child: TextFormField(
                              controller: _email,
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: '  Email',
                                hintStyle: TextStyle(color: Colors.grey),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xff53E88B), width: 3),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Email can not be Empty";
                                }
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12.sp,
                        ),
                        Container(
                          height: 67.h,
                          width: 325.w,
                          decoration: BoxDecoration(
                            color: Color(0xffF4F4F4),
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          child: Center(
                            child: TextFormField(
                              controller: _password,
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: '  Password',
                                hintStyle: TextStyle(color: Colors.grey),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xff53E88B), width: 3),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Password can not be Empty";
                                }
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.sp,
                        ),
                        Ts(
                          text: 'Or Continue With',
                          size: 14.sp,
                          weight: FontWeight.w900,
                        ),
                        SizedBox(
                          height: 20.sp,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 67.h,
                              width: 152.w,
                              decoration: BoxDecoration(
                                color: Color(0xffF4F4F4),
                                borderRadius: BorderRadius.circular(15.r),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  CircleAvatar(
                                    radius: 18.r,
                                    backgroundColor: Color(0xff3C5A9A),
                                    child: Image.asset(
                                      'assets/photo/facebook.png',
                                    ),
                                  ),
                                  Ts(
                                    text: 'Facebook',
                                    size: 17.sp,
                                    weight: FontWeight.w900,
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                signInWithGoogle().then((value) =>
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Payment())));
                              },
                              child: Container(
                                height: 67.h,
                                width: 152.w,
                                decoration: BoxDecoration(
                                  color: Color(0xffF4F4F4),
                                  borderRadius: BorderRadius.circular(15.r),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    CircleAvatar(
                                      radius: 18.r,
                                      backgroundColor: Colors.transparent,
                                      child: Image.asset(
                                        'assets/photo/G.png',
                                      ),
                                    ),
                                    Ts(
                                      text: 'Google',
                                      size: 17.sp,
                                      weight: FontWeight.w900,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.sp,
                        ),
                        Ts(
                          text: 'Forgot Your Password ?',
                          size: 14.sp,
                          color: Color(0xff53E88B),
                          weight: FontWeight.w900,
                        ),
                        SizedBox(
                          height: 20.sp,
                        ),
                        GestureDetector(
                          onTap: () async {
                            if (_formKey.currentState!.validate()) {
                              await FirebaseAuthServices.logIn(
                                  password: _password.text, email: _email.text);
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
                              child: Ts(
                                text: 'Login',
                                weight: FontWeight.w900,
                                color: Colors.white,
                                size: 18.sp,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
