import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Dealspage/arrivals.dart';

class DealsPage  extends StatefulWidget {
  const DealsPage ({Key? key}) : super(key: key);

  @override
  State<DealsPage > createState() => _DealsPageState();
}

class _DealsPageState extends State<DealsPage > {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.purple.shade500,
        borderRadius: BorderRadius.circular(20),

      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 30,left: 40),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    GestureDetector(
                      child: Container(
                        height: 50,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(image: AssetImage("assets/images/arrivals.jpg"),fit: BoxFit.cover)
                        ),
                      ),
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Arrivals()));
                      },
                    ),
                    const Text("New Arrival",style: TextStyle(color: Colors.white,fontSize: 12),)
                  ],
                ),
                const SizedBox(width: 30,),
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(image: AssetImage("assets/images/super.png"),fit: BoxFit.cover)
                      ),
                    ),
                    const Text("Super Sales",style: TextStyle(color: Colors.white,fontSize: 12),)
                  ],
                ),
                const SizedBox(width: 30,),
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(image: AssetImage("assets/images/image2.png"),fit: BoxFit.cover)
                      ),
                    ),
                    const Text("Flash Deals",style: TextStyle(color: Colors.white,fontSize: 12),)
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(image: AssetImage("assets/images/express.png"),fit: BoxFit.cover)
                      ),
                    ),
                    const Text("Express",style: TextStyle(color: Colors.white,fontSize: 12),)
                  ],
                ),
                const SizedBox(width: 30,),
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(image: AssetImage("assets/images/mega.jpeg"),fit: BoxFit.cover)
                      ),
                    ),
                    const Text("Mega",style: TextStyle(color: Colors.white,fontSize: 12),)
                  ],
                ),
                const SizedBox(width: 30,),
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(image: AssetImage("assets/images/image3.png"),fit: BoxFit.cover)
                      ),
                    ),
                    const Text("Free Delivery",style: TextStyle(color: Colors.white,fontSize: 12),)
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
