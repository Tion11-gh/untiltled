import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tino_mall/firebaseConst/auth.contl.dart';


import '../bottom.dart';
import '../firebaseConst/firebase.dart';
import 'Login.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var controller = Get.put(Authcontroller());
  var emailcontroller = TextEditingController();
  var passwordcontroller = TextEditingController();
  var namecontroller = TextEditingController();
   var confirmpasswordcontroller = TextEditingController();
   var phonecontroller = TextEditingController();

   bool? isCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.purple,
      body: Center(
        child: SingleChildScrollView(

          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 152),
                height: 600,
                width: double.infinity,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
                    color: Colors.white
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Text("SignUp",style: TextStyle(
                        color: Colors.purple,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,

                      ),),
                      const SizedBox(height: 15,),

                      TextFormField(
                        obscureText: false,
                        controller: namecontroller,
                        decoration: InputDecoration(

                          hintStyle: const TextStyle(
                            color: Colors.grey,
                          ),
                          hintText: "Enter Name",
                          isDense: true,
                          fillColor: Colors.grey.shade300,
                          filled: true,
                          border: InputBorder.none,
                          focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.purple)),

                        ),
                      ),
                      const SizedBox(height: 15,),
                      TextFormField(
                        controller: phonecontroller,
                        decoration: InputDecoration(
                          hintStyle: const TextStyle(
                            color: Colors.grey,
                          ),
                          hintText: "Phone Number",
                          isDense: true,
                          fillColor: Colors.grey.shade300,
                          filled: true,
                          border: InputBorder.none,
                          focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.purple)),

                        ),
                      ),
                      const SizedBox(height: 15,),
                      TextFormField(
                        controller: emailcontroller,
                        decoration: InputDecoration(
                          hintStyle: const TextStyle(
                            color: Colors.grey,
                          ),
                          hintText: "Enter Email",
                          isDense: true,
                          fillColor: Colors.grey.shade300,
                          filled: true,
                          border: InputBorder.none,
                          focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.purple)),

                        ),
                      ),
                      const SizedBox(height: 15,),
                      TextFormField(
                        obscureText: true,
                        controller: passwordcontroller,
                        decoration: InputDecoration(
                          hintStyle: const TextStyle(
                            color: Colors.grey,
                          ),
                          hintText: "Enter Password",
                          isDense: true,
                          fillColor: Colors.grey.shade300,
                          filled: true,
                          border: InputBorder.none,
                          focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.purple)),

                        ),
                      ),
                      const SizedBox(height: 15,),
                      TextFormField(
                        controller: confirmpasswordcontroller,
                        decoration: InputDecoration(
                          hintStyle: const TextStyle(
                            color: Colors.grey,
                          ),
                          hintText: "Confirm password",
                          isDense: true,
                          fillColor: Colors.grey.shade300,
                          filled: true,
                          border: InputBorder.none,
                          focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.purple)),

                        ),
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        children: [
                          Checkbox(
                            activeColor: Colors.purple,
                              checkColor: Colors.white,

                              value: isCheck, onChanged: (newValue){
                              setState(() {
                                isCheck = newValue;
                              });
                          }),
                          const SizedBox(width: 10,),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                             Row(children:[ Text("I agree to the ",style: TextStyle(color: Colors.grey),),
                              Text("Terms and Conditions & ",style: TextStyle(color: Colors.purple,),

                              )
                               ]),
                              Text("Privacy policy ",style: TextStyle(color: Colors.purple,)),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 10,),
                      GestureDetector(
                        onTap: ()async {
                          if (isCheck != false) {
                            try {
                              await controller.signupMethod( context: context,
                                email: emailcontroller.text,
                                password: passwordcontroller.text,)
                                  .then((Value) {
                                return controller.storeUserData(
                                    email: emailcontroller.text,
                                    password: passwordcontroller.text,
                                    name: namecontroller.text,
                                    phone: phonecontroller.text
                                );
                              }).then((value){

                                Get.offAll(()=>BottomNavigation);
                              });
                            } catch (e) {
                              auth.signOut();
                            }
                          }
                        },
                        child: Container(
                          height: 50,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            color: isCheck==true ? Colors.purple : Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Center(child: Text("Sign Up",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
                        ),
                      ),

                      const SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment:  MainAxisAlignment.center,
                        children: [
                          const Text("Have an account already?"),
                          const SizedBox(width: 5,),
                          GestureDetector(
                            onTap: (){Navigator.pushReplacement(context as BuildContext, MaterialPageRoute(builder: (context)=>LoginPage()));},
                              child: const Text("LogIn",style: TextStyle(color: Colors.purple,fontSize: 15),)),
                        ],
                      ),
                      const SizedBox(height: 15,),
                      const Text("Or Signup with :",style: TextStyle(color: Colors.grey),),
                      const SizedBox(height: 10,),

                      const Row(
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
