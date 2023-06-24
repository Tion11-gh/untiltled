import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tino_mall/authScreen/otp.dart';

class OTPInput extends StatefulWidget {
  const OTPInput({super.key});

  @override
  State<OTPInput> createState() => _OTPInputState();
}

class _OTPInputState extends State<OTPInput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      backgroundColor: Colors.purple,
      body: Center(
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 152),
                height: 600,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
                    color: Colors.white
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text("Enter Verification Code sent to your Email",style: TextStyle(
                        color: Colors.purple,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,

                      ),),
                      SizedBox(height: 50,),


                      OTP(),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Didn't get code?"),
                          SizedBox(width: 5,),
                          Text('Resend',style: TextStyle(color: Colors.purple,fontSize: 15),),
                        ],
                      ),
                      SizedBox(height: 20,),


                      SizedBox(height: 10,),

                      Container(
                        height: 50,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(child: Text("Confirm",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
                      ),

                      SizedBox(height: 20,),



                    ],

                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
