import 'package:flutter/material.dart';

import 'package:tino_mall/sellers.dart';
import 'package:velocity_x/velocity_x.dart';

import 'maylike.dart';

class ItemsDetails extends StatefulWidget {
  const ItemsDetails({super.key});

  @override
  State<ItemsDetails> createState() => _ItemsDetailsState();
}

class _ItemsDetailsState extends State<ItemsDetails> {
  List text = [
    "S",
    "M",
    "L",
    "XL",
    "XXL",
  ];
  static const color =[
    Colors.brown,
    Colors.white,
    Colors.black
  ];
  List <String> details =[
    "Delivery Location",
    "Privacy Policy",
    "Return Policy",
  ];
  final controller = PageController();
  List images=[
    "assets/images/essen.jpg",
    "assets/images/essen2.jpeg",
    "assets/images/essen3.jpeg",
    "assets/images/essen4.jpeg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(
    leading: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back,color: Colors.purple,)),
    actions: [IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart,color: Colors.purple,)),
      IconButton(onPressed: (){}, icon: const Icon(Icons.favorite,))
    ],
    title: const Text("Essentials(Hoodie)",style: TextStyle(fontSize: 20),),
    centerTitle: true,
  ),
 bottomNavigationBar: Container(
   height: 50,
   width: double.infinity,
   color: Colors.purple,
   child: const Row(
     mainAxisAlignment: MainAxisAlignment.center,
     children: [
       Text("Add to Cart",style:TextStyle(fontSize: 20,color: Colors.white)),
       SizedBox(width: 5,),
       Icon(Icons.shopping_cart,color: Colors.white,)
     ],

   ),
 ),
 body: Column(

   children: [
     Expanded(child: Padding(
       padding: const EdgeInsets.all(12),
       child: SingleChildScrollView(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             VxSwiper.builder(

               height: 350,
               scrollDirection: Axis.horizontal,
               autoPlay: true,
                 aspectRatio: 16/9,
                 itemCount: images.length,
                 itemBuilder: (context,index){
                   return Image.asset(
                     images[index],
                     width: double.infinity,
                     fit: BoxFit.cover,
                   );
                 }
             ),
             const SizedBox(height: 20,),
             const Text('Essentials Hoodie',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
             const SizedBox(height: 10,),
             VxRating(onRatingUpdate: (value){},normalColor: Colors.grey,
               selectionColor: Colors.yellow,stepInt: true,count: 5,),
             const SizedBox(height: 10,),
             Wrap(
               direction: Axis.horizontal,
               children: List.generate(5, (index){
                 return Container(
                   margin: const EdgeInsets.only(right: 10),
                   child: Container(
                     height: 50,
                     width: 50,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       color: Colors.grey.shade200
                     ),
                     child: Center(child: Text(text[index])
                   ),
                   ),
                 );
               }
             ),
             ),
             const SizedBox(height: 15,),
             const Text("GH₵ 120",style: TextStyle(color: Colors.purple,fontSize: 20),),
             const SizedBox(height: 20,),
             Container(
               height: 60,
               width: double.infinity,
               color: Colors.grey.shade100,
               child: const Padding(
                 padding: EdgeInsets.only(left: 8,right: 8),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text("Seller:"),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text("Able Clothes"),
                         CircleAvatar(

                           backgroundColor: Colors.white,
                           child: Icon(Icons.message,color:Colors.purple,),
                         ),

                       ],
                     )
                   ],
                 ),
               ),
             ),
             const SizedBox(height: 2,),
             Container(
                 height: 70,
                 width: double.infinity,
                 color:Colors.grey.shade100,
               child: Row(
                 children: [
                   const Text("Colors:"),
                   const SizedBox(width: 30,),
                   Row(
                     children:
                   List.generate(3, (index) {
                     return Container(
                     margin: const EdgeInsets.only(right: 20),
                       child: CircleAvatar(
                         backgroundColor: color[index],
                       ),
                     );
                   }

                   ),
                   ),


                 ],
               ),
             ),
             const SizedBox(
               height: 5,
             ),
             Container(
               height: 70,
               width: double.infinity,
               color:Colors.grey.shade100,
               child: Row(
                 children: [
                   const Text("Quantity:"),
                   const SizedBox(width: 30,),
                   Row(
                     children: [
                       IconButton(onPressed: (){}, icon: const Icon(Icons.remove)),
                       const Text("0",style: TextStyle(fontSize: 15),),
                       IconButton(onPressed: (){}, icon: const Icon(Icons.add)),
                     ],
                   ),


                 ],
               ),
             ),
            const SizedBox(height: 5,),
             Container(
               height: 70,
               width: double.infinity,
               color:Colors.purple.shade50,
               child: const Row(
                 children: [
                   Text("Total:",style: TextStyle(fontSize: 15),),
                   SizedBox(width: 30,),
                   Row(
                     children: [
                       Text("GH₵0.00",style: TextStyle(fontSize: 20,color: Colors.purple),),

                     ],
                   ),


                 ],
               ),
             ),
            const SizedBox(height: 10,),
            Container(
              height: 200,
              width: double.infinity,
              color:Colors.grey.shade200,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Description:"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Made from 100% organic cotton in the UK, our hoodie weighs in with 500gsm fabric. Featuring a finely detailed embroidered logo, to the centre chest, it is slightly sueded and made for a smooth movement."),
                  )
                ],
              ),
            ),
             const SizedBox(height: 10,),
             Container(
               color: Colors.grey.shade100,
               width: double.infinity,
               height: 200,
               child: ListView.separated(
                 shrinkWrap: true,
                 physics: NeverScrollableScrollPhysics(),

                 itemCount: details.length,
                 itemBuilder: (context,index){
                   return ListTile(
                     //  leading:CircleAvatar(child: Image.asset("assets/images/sett.png")),

                       title: Text(details[index]),
                       trailing: IconButton(onPressed: () {  }, icon: Icon(Icons.arrow_forward),)
                   );
                 }, separatorBuilder: (BuildContext context, int index) {
                 return Divider(
                   color: Colors.purple,
                 );
               },),
             ),
             const SizedBox(height: 25,),
             Container(
               height: 30,
               width: double.maxFinite,
               color: Colors.purple.shade100,
               child: const Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text(" Customers Feedback",style: TextStyle(color: Colors.black)),
                   Row(
                     children: [
                       Text("see all "),
                       Icon(Icons.arrow_drop_down),
                     ],
                   )
                 ],

               ),

             ),
             Container(
               height: 400,
               width: double.infinity,
               color: Colors.purple.shade50,
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Container(
                     margin: const EdgeInsets.only(top: 30),
                     height: 70,
                     width: double.infinity,
                     color: Colors.grey.shade100,
                     child: const Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Text("Woww it's very good  "),
                             Text("17-06-2023",style: TextStyle(color: Colors.grey),),

                           ],
                         ),
                         SizedBox(height: 10,),
                         Text("by Kofi")
                       ],
                     ),
                   ),
                   Container(
                     margin: const EdgeInsets.only(top: 30),
                     height: 70,
                     width: double.infinity,
                     color: Colors.grey.shade100,
                     child: const Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Text("Woww it's very good  "),
                             Text("17-06-2023",style: TextStyle(color: Colors.grey),),

                           ],
                         ),
                         SizedBox(height: 10,),
                         Text("by Kofi")
                       ],
                     ),
                   ),
                   Container(
                     margin: const EdgeInsets.only(top: 30),
                     height: 70,
                     width: double.infinity,
                     color: Colors.grey.shade100,
                     child: const Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Text("Woww it's very good  "),
                             Text("17-06-2023",style: TextStyle(color: Colors.grey),),

                           ],
                         ),
                         SizedBox(height: 10,),
                         Text("by Kofi")
                       ],
                     ),
                   ),
                   Container(
                     margin: const EdgeInsets.only(top: 30),
                     height: 70,
                     width: double.infinity,
                     color: Colors.grey.shade100,
                     child: const Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Text("Woww it's very good  "),
                             Text("17-06-2023",style: TextStyle(color: Colors.grey),),

                           ],
                         ),
                         SizedBox(height: 10,),
                         Text("by Kofi")
                       ],
                     ),
                   ),
                 ],
               ),

             ),
             const SizedBox(height: 20,),
             Container(
               height: 30,
               width: double.maxFinite,
               color: Colors.purple.shade100,
               child: const Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text(" More from the seller(Able Wears)",style: TextStyle(color: Colors.black)),
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
              const Ables(),
             const SizedBox(height: 20,),
             Container(
               height: 30,
               width: double.maxFinite,
               color: Colors.purple.shade100,
               child: const Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text(" You may also like",style: TextStyle(color: Colors.black)),
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
             const Recommended(),


           ],
         ),
       ),
     ))
   ],
 ),
    );
  }

}
