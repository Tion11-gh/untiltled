import 'package:flutter/material.dart';
import 'package:tino_mall/authScreen/forgot%20Pass.dart';
import 'package:tino_mall/authScreen/singup.dart';
import 'package:tino_mall/firebaseConst/auth.contl.dart';


class LoginPage extends StatelessWidget {
  var _emailController = TextEditingController();
  var _passwordController = TextEditingController();

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
                      Text("Login",style: TextStyle(
                        color: Colors.purple,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,

                      ),),
                      SizedBox(height: 20,),

                      TextFormField(
                        controller: _emailController,
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
                      TextFormField(
                        obscureText: true,
                        controller: _passwordController,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          hintText: "Enter password",
                          isDense: true,
                          fillColor: Colors.grey.shade300,
                          filled: true,
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.purple)),

                        ),
                      ),
                      SizedBox(height: 10,),
                      Align(
                        alignment: Alignment.centerRight,
                          child: GestureDetector(
                            onTap: (){Navigator.pushReplacement(context as BuildContext, MaterialPageRoute(builder: (context)=>ForgotPassword()));},
                              child: Text("forgot password?",style: TextStyle(fontSize: 15),))),
                      SizedBox(height: 20,),

                      GestureDetector(
                        onTap: (){
                        },
                        child: Container(
                          height: 50,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(child: Text("Log In",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
                        ),
                      ),

                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment:  MainAxisAlignment.center,
                        children: [
                          Text("Don't have an account?"),
                          SizedBox(width: 5,),
                          GestureDetector(
                            onTap: (){
                              Navigator.pushReplacement(context as BuildContext, MaterialPageRoute(builder: (context)=>SignUp()));
                            },
                              child: Text("Sign Up",style: TextStyle(color: Colors.purple,fontSize: 15),)),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Text("Or Login with :",style: TextStyle(color: Colors.grey),),
                      SizedBox(height: 10,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(

                            backgroundImage: AssetImage("assets/images/Facebook-logo.png"),
                            backgroundColor: Colors.white,
                          ),
                          SizedBox(width: 10,),
                          CircleAvatar(
                            backgroundImage: AssetImage("assets/images/google+.png"),
                            backgroundColor: Colors.white,
                          ),
                          SizedBox(width: 10,),
                          CircleAvatar(
                            backgroundImage: AssetImage("assets/images/twiteer.jpg"),
                            backgroundColor: Colors.white,
                          ),
                        ],
                      )

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
