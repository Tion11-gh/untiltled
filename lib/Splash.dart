import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tino_mall/bottom.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    navigateToHomePage();
  }

  Future navigateToHomePage() async {
    await Future.delayed(Duration(seconds: 10));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => BottomNavigation()));
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(

      child: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            children: [
              Image(image:AssetImage('assets/images/onboard.jpg'),
              ) ,
              Container(
                //  padding: EdgeInsets.only(top:110),
                height: 112,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10) ),
                    color: Colors.white
                ),

                ),

            ],
          ),
        ),
      ),
    );
  }
}
