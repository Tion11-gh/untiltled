import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tino_mall/authScreen/singup.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
                      Text("Rest Password",style: TextStyle(
                        color: Colors.purple,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,

                      ),),
                      SizedBox(height: 50,),

                      TextFormField(
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          hintText: "Enter email",
                          isDense: true,
                          fillColor: Colors.grey.shade300,
                          filled: true,
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.purple)),

                        ),
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
                        child: Center(child: Text("Request OTP",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
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
