import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JustForYou extends StatefulWidget {
  const JustForYou({Key? key}) : super(key: key);

  @override
  State<JustForYou> createState() => _JustForYouState();
}

class _JustForYouState extends State<JustForYou> {
  List<CardItem> items=[
    const CardItem(
        assetImage: 'assets/images/nike.jpeg',
        title: 'Nike F1 low',
        subtitle: 'GH₵ 230'),
    const CardItem(
        assetImage: "assets/images/essen.jpg", title: "Ess.Hodie", subtitle: "GH₵ 120"),
    const CardItem(
        assetImage: "assets/images/SCHOOL BAG.jpeg", title: "Ess.Hodie", subtitle: "GH₵ 120"),
    const CardItem(
        assetImage: "assets/images/shoes.jpg", title: "Ess.Hodie", subtitle: "GH₵ 120"),
    const CardItem(
        assetImage: "assets/images/SPRAY.jpg", title: "Ess.Hodie", subtitle: "GH₵ 120"),
    const CardItem(
        assetImage: "assets/images/KIDS1.jpg", title: "Ess.Hodie", subtitle: "GH₵ 120"),
    const CardItem(
        assetImage: "assets/images/KIDS2.jpg", title: "Ess.Hodie", subtitle: "GH₵ 120"),
    const CardItem(
        assetImage: "assets/images/CREAM1.jpg", title: "Ess.Hodie", subtitle: "GH₵ 120"),
    const CardItem(
        assetImage: "assets/images/SPRAY2.jpeg", title: "Ess.Hodie", subtitle: "GH₵ 120"),
    const CardItem(
        assetImage: "assets/images/KIDS3.jpg", title: "Ess.Hodie", subtitle: "GH₵ 120"),

  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 550,
        child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),

            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 220,
          childAspectRatio: 1,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
            itemCount: 6,
            itemBuilder: (context,index)=> JustCard(item: items[index])


        ),

    );
  }
  Widget JustCard ({

    required CardItem item,
}) =>
      Container(

        width: 200,
        decoration: BoxDecoration(
            color: Colors.purple.shade50,
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Expanded(child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: AspectRatio(

                aspectRatio: 4/3,
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
            Text(item.title,style: const TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
            Text(item.subtitle,style: const TextStyle(color: Colors.black,fontSize: 20),),
            const SizedBox(height: 20,),

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