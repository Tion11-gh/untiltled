import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tino_mall/Home%20Bodies/Deals%20Page.dart';
import 'package:velocity_x/velocity_x.dart';

import '../Home Bodies/just for you.dart';
import '../Home Bodies/trendings.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List imageList = [
    "assets/images/slider1.jpg",
    "assets/images/slider2.jpg",
    "assets/images/slider3.jpg",
    "assets/images/slider4.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      child: const Text("Tm",style: TextStyle(color: Colors.purple,fontSize: 15),),
                    ),
                    Container(
                        height: 60,
                        width: 60,
                        child:IconButton(onPressed: () {  }, icon: const Icon(Icons.message,size: 25,color: Colors.purple,),)
                    ),

                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 30,
                      width: 270,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey.shade300,

                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Row(
                        //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.search_rounded,color: Colors.grey ,),
                            Text('Serach Your desired Item',style: TextStyle(color: Colors.grey),),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.purple,

                      ),
                      child: const Center(child: Text('Serach',style: TextStyle(color: Colors.white),)),
                    ),

                  ],
                ),
                VxSwiper.builder(
                  enlargeCenterPage: true,
                  height: 200,
                  aspectRatio: 16/9,
                  autoPlay: true,
                    itemCount: imageList.length,
                    itemBuilder: (context,index){
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Image.asset(imageList[index]),
                  );
                }),
                const SizedBox(height: 20,),
                const DealsPage(),
                const SizedBox(height: 20,),
                Container(
                height: 30,
                width: double.maxFinite,
                color: Colors.purple.shade100,
                child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(" Trendings",style: TextStyle(color: Colors.black)),
                  Row(
                    children: [
                      Text("see all "),
                      Icon(Icons.arrow_drop_down),
                    ],
                  )
                ],

                ),

                ),
                const SizedBox(height: 10,),
                const Trendings(),
                const SizedBox(height: 20,),
                Container(
                height: 30,
                width: double.maxFinite,
                color: Colors.purple.shade100,
                child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(" Just for you ",style: TextStyle(color: Colors.black)),
                  Row(
                    children: [
                      Text("see all "),
                      Icon(Icons.arrow_drop_down),
                    ],
                  )
                ],

                ),

                ),
                const SizedBox(height: 10,),
                const JustForYou()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
