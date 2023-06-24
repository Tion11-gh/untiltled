import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tino_mall/authScreen/Login.dart';
import 'package:tino_mall/profileDetails/Profile%20details.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Column(
      children: [
        Container(
          height: 150,
          color: Colors.purple,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                     margin: EdgeInsets.only(top:10),
                     height: 50,
                     width: 50,
                     decoration: BoxDecoration(
                       image: DecorationImage(image: AssetImage("assets/images/shoes.jpg"),fit: BoxFit.cover,),
                       color: Colors.white,
                         borderRadius: BorderRadius.circular(30)),
                   ),
                 ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                      child: Text("Clement kofie",style: TextStyle(color: Colors.white,fontSize: 15),)),

                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: GestureDetector(
                  onTap: (){},
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pushReplacement(context as BuildContext, MaterialPageRoute(builder: (context)=>LoginPage()));
                    },
                    child: Container(

                      height: 30,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(child: Text("Logout",style: TextStyle(color: Colors.white),),),
                    ),
                  ),
                ),
              ),
            ],

          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 70,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),

              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("00",style: TextStyle(color: Colors.purple,fontWeight: FontWeight.bold),),
                  SizedBox(height: 5,),
                  Text("Your cart",style: TextStyle(color: Colors.purple,),),

                ],
              ),
            ),
            Container(
              height: 70,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),

              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("00",style: TextStyle(color: Colors.purple,fontWeight: FontWeight.bold),),
                  SizedBox(height: 5,),
                  Text("Favorites",style: TextStyle(color: Colors.purple,),),

                ],
              ),
            ),
            Container(
              height: 70,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),

              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("00",style: TextStyle(color: Colors.purple,fontWeight: FontWeight.bold),),
                  SizedBox(height: 5,),
                  Text("Your orders",style: TextStyle(color: Colors.purple,),),

                ],
              ),
            ),

          ],
        ),
        SizedBox(height: 20,),
         ProfileDetails()
      ],
      ),
    );
  }
}