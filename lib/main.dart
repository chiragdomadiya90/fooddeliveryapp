import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fooddeliveryapp/view/forgotpassword.dart';
import 'package:fooddeliveryapp/view/password.dart';
import 'package:fooddeliveryapp/view/payment.dart';
import 'package:fooddeliveryapp/view/setlocation.dart';
import 'package:fooddeliveryapp/view/signup_process.dart';
import 'package:fooddeliveryapp/view/onboarding.dart';
import 'package:fooddeliveryapp/view/login.dart';
import 'package:fooddeliveryapp/view/signup.dart';
import 'package:fooddeliveryapp/view/signupsuccess.dart';
import 'package:fooddeliveryapp/view/spalashscr.dart';
import 'package:fooddeliveryapp/view/successnotification.dart';
import 'package:fooddeliveryapp/view/uploadphoto.dart';
import 'package:fooddeliveryapp/view/uploadpreview.dart';
import 'package:fooddeliveryapp/view/verificationcode.dart';
import 'package:provider/provider.dart';

import 'controller/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        builder: () => MultiProvider(
              providers: [
                ChangeNotifierProvider(
                  create: (context) => PageTranceController(),
                ),
              ],
              child: MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: ThemeData(),
                home: Signup(),
              ),
            ),
        designSize: const Size(375, 812));
  }
}
