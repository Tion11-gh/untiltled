import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
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
    return Scaffold(
      appBar: AppBar(
       // leading: IconButton(onPressed: (){},icon: Icon(Icons.arrow_back,color: Colors.white,),),
        backgroundColor: Colors.purple,
        toolbarHeight: 120,
        title:const Text("Categories",style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child: GridView.builder(

            shrinkWrap: true,


            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
              mainAxisExtent: 200,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
            ),
            itemCount: 9,
            itemBuilder: (context,index)=> JustCard(item: items[index])



        ),

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
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Expanded(child: ClipRRect(
              borderRadius: BorderRadius.circular(2),
              child: Material(
                  child: Ink.image(
                    height: 120,
                    width: 200,
                    image: AssetImage(item.assetImage,

                  ),
                    fit: BoxFit.cover,
                    child: InkWell(
                      onTap: (){},
                    ),
                  )
              ) ,
            ),
            ),

            const SizedBox(height: 4,),
            Text(item.title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
           // Text(item.subtitle,style: TextStyle(color: Colors.black,fontSize: 15),),
            SizedBox(height: 20,),

          ],

        ),
      );
}
class CardItem {
  final String assetImage;
  final String title;
  final String subtitle;
  const CardItem(
  {required this.assetImage,
  required this.title,
  required this.subtitle,
});
}
