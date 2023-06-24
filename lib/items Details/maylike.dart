import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Recommended extends StatefulWidget {
  const Recommended({Key? key}) : super(key: key);

  @override
  State<Recommended> createState() => _RecommendedState();
}

class _RecommendedState extends State<Recommended> {
  final controller = PageController();
  List<CardItem> items=[
    CardItem(
        assetImage: 'assets/images/nike.jpeg',
        title: 'Nike F1 low',
        subtitle: 'GH₵ 230'),
    CardItem(
        assetImage: "assets/images/essen.jpg", title: "Ess.Hodie", subtitle: "GH₵ 120"),
    CardItem(
        assetImage: "assets/images/SCHOOL BAG.jpeg", title: "Ess.Hodie", subtitle: "GH₵ 120"),
    CardItem(
        assetImage: "assets/images/shoes.jpg", title: "Ess.Hodie", subtitle: "GH₵ 120"),
    CardItem(
        assetImage: "assets/images/SPRAY.jpg", title: "Ess.Hodie", subtitle: "GH₵ 120"),
    CardItem(
        assetImage: "assets/images/KIDS1.jpg", title: "Ess.Hodie", subtitle: "GH₵ 120"),
    CardItem(
        assetImage: "assets/images/KIDS2.jpg", title: "Ess.Hodie", subtitle: "GH₵ 120"),
    CardItem(
        assetImage: "assets/images/CREAM1.jpg", title: "Ess.Hodie", subtitle: "GH₵ 120"),
    CardItem(
        assetImage: "assets/images/SPRAY2.jpeg", title: "Ess.Hodie", subtitle: "GH₵ 120"),
    CardItem(
        assetImage: "assets/images/KIDS3.jpg", title: "Ess.Hodie", subtitle: "GH₵ 120"),

  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          width: double.maxFinite,
          child: ListView.separated(
            controller:controller ,
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context,index)=> buildCard( item:items[index]),
            separatorBuilder: (context, _) =>  SizedBox(width: 12,) ,
          ),
        ),
        SizedBox(height: 10,),

      ],
    );
  }
  Widget buildCard ( {
    required CardItem item,
  }) =>
      Container(

        width: 150,
        decoration: BoxDecoration(
            color: Colors.purple.shade50,
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Expanded(child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: AspectRatio(

                aspectRatio: 16/9,
                child:Material(
                    child: Ink.image(image: AssetImage(item.assetImage)
                      ,fit: BoxFit.cover,
                      child: InkWell(
                        onTap: (){},
                      ),
                    )
                ),
              ) ,
            ),
            ),

            const SizedBox(height: 4,),
            Text(item.title,style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
            Text(item.subtitle,style: TextStyle(color: Colors.black,fontSize: 20),),
            SizedBox(height: 20,),

          ],

        ),
      );

}

class CardItem {
  final String assetImage;
  final String title;
  final String subtitle;
  const CardItem({
    required this.assetImage,
    required this.title,
    required this.subtitle,
  });
}
