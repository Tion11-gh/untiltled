import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tino_mall/Splash.dart';
import 'package:tino_mall/authScreen/Login.dart';
import 'package:tino_mall/authScreen/OTP%20Request.dart';
import 'package:tino_mall/authScreen/otp.dart';
import 'package:tino_mall/body%20pages/home.dart';
import 'package:tino_mall/body%20pages/profile.dart';
import 'package:tino_mall/bottom.dart';
import 'package:tino_mall/firebaseConst/auth.contl.dart';
import 'package:tino_mall/items%20Details/Items.dart';
import 'package:tino_mall/items%20Details/chatsCREEN.dart';

import 'body pages/cart.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(


        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const BottomNavigation(),
    );
  }
}
