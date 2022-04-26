import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fooddeliveryapp/common/text.dart';
import 'package:fooddeliveryapp/firebase_service/constant.dart';
import 'package:fooddeliveryapp/firebase_service/firebase_auth_service.dart';
import 'package:fooddeliveryapp/view/signup_process.dart';
import 'package:fooddeliveryapp/view/spalashscr.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formKey = GlobalKey<FormState>();
  final _email = TextEditingController();
  final _name = TextEditingController();
  final _password = TextEditingController();
  bool isSwitch = false;
  bool isSwitch1 = false;
  bool visable = true;
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
                        'Sign Up For Free',
                        style: TextStyle(
                            fontSize: 22.sp, fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Container(
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _name,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.person,
                              color: Color(0xff53E88B),
                            ),
                            border: InputBorder.none,
                            fillColor: Colors.grey.shade300,
                            filled: true,
                            hintText: 'Full Name',
                            hintStyle: TextStyle(color: Colors.grey),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xff53E88B), width: 3),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.transparent, width: 3),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Name can not be Empty";
                            }
                          },
                        ),
                        SizedBox(
                          height: 12.sp,
                        ),
                        TextFormField(
                          controller: _email,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.email,
                              color: Color(0xff53E88B),
                            ),
                            border: InputBorder.none,
                            fillColor: Colors.grey.shade300,
                            filled: true,
                            hintText: 'Email',
                            hintStyle: TextStyle(color: Colors.grey),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xff53E88B), width: 3),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.transparent, width: 3),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Email can not be Empty";
                            }
                          },
                        ),
                        SizedBox(
                          height: 12.sp,
                        ),
                        TextFormField(
                          controller: _password,
                          obscureText: visable,
                          maxLength: 8,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            counter: Offstage(),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Color(0xff53E88B),
                            ),
                            suffixIcon: IconButton(
                                splashRadius: 20,
                                onPressed: () {
                                  setState(() {
                                    visable = !visable;
                                  });
                                },
                                icon: visable == false
                                    ? Icon(
                                        Icons.visibility,
                                        color: Colors.grey,
                                      )
                                    : Icon(
                                        Icons.visibility_off,
                                        color: Colors.grey,
                                      )),
                            border: InputBorder.none,
                            fillColor: Colors.grey.shade300,
                            filled: true,
                            hintText: 'Password',
                            hintStyle: TextStyle(color: Colors.grey),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xff53E88B), width: 3),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.transparent, width: 3),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Password can not be Empty";
                            }
                          },
                        ),
                        SizedBox(
                          height: 20.sp,
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isSwitch = !isSwitch;
                                });
                              },
                              child: CircleAvatar(
                                radius: 13.r,
                                backgroundColor: isSwitch == true
                                    ? Colors.teal
                                    : Colors.grey.shade500,
                                child: Icon(
                                  Icons.check,
                                  color: isSwitch == true
                                      ? Colors.white
                                      : Colors.transparent,
                                  size: 18.sp,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Ts(
                              text: 'Keep Me Signed In',
                              color: Colors.grey,
                              size: 17.sp,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 12.sp,
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isSwitch1 = !isSwitch1;
                                });
                              },
                              child: CircleAvatar(
                                radius: 13.r,
                                backgroundColor: isSwitch1 == true
                                    ? Colors.teal
                                    : Colors.grey.shade500,
                                child: Icon(
                                  Icons.check,
                                  color: isSwitch1 == true
                                      ? Colors.white
                                      : Colors.transparent,
                                  size: 18.sp,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Ts(
                              text: 'Email Me About Special Pricing',
                              color: Colors.grey,
                              size: 17.sp,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 40.sp,
                        ),
                        GestureDetector(
                          onTap: () async {
                            if (_formKey.currentState!.validate()) {
                              await FirebaseAuthServices.signUp(
                                  email: _email.text, password: _password.text);
                              userCollection
                                  .doc(kFirebaseAuth.currentUser!.uid)
                                  .set({
                                'name': _name.text,
                                'email': _email.text,
                                'password': _password.text,
                              });
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignUpProcess(),
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
                                text: 'Create Account',
                                weight: FontWeight.w900,
                                color: Colors.white,
                                size: 18.sp,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.sp,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Ts(
                            text: 'already have an account ?',
                            color: Color(0xff53E88B),
                            size: 16.sp,
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
