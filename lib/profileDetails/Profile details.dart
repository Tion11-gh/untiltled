import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileDetails extends StatefulWidget {
  const ProfileDetails({super.key});

  @override
  State<ProfileDetails> createState() => _ProfileDetailsState();
}

class _ProfileDetailsState extends State<ProfileDetails> {
  List<String> Product = [
    "My Orders",
    "My Favorites",
    "Coupons",
    "Profile settings",

  ];
  List image =[
   "assets/images/order.png",
    "assets/images/love.png",
    "assets/images/ticket.png",
    "assets/images/sett.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 320,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),

         child: ListView.separated(
           shrinkWrap: true,
           physics: NeverScrollableScrollPhysics(),

           itemCount: Product.length,
             itemBuilder: (context,index){
           return ListTile(
             leading:CircleAvatar(child: Image.asset(image[index])),

             title: Text(Product[index]),
             trailing: IconButton(onPressed: () {  }, icon: Icon(Icons.arrow_forward),)
           );
         }, separatorBuilder: (BuildContext context, int index) {
             return Divider(
               color: Colors.purple,
             );
         },),
        )
      ],
    );
  }
}
