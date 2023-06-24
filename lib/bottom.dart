import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'body pages/cart.dart';
import 'body pages/categories.dart';
import 'body pages/home.dart';
import 'body pages/profile.dart';


class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int selectedIndex=0;
  List pages =[
    HomePage(),
    Categories(),
    Cart(),
    Profile(),
  ];
  void onTappedItem(int index){
    setState(() {
      selectedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SafeArea(child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap:onTappedItem ,
        currentIndex: selectedIndex,
        elevation: 10,
        selectedItemColor: Colors.purple,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.dashboard_outlined),label: "Categories"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
        ],

      ),
      ),
      body: pages[selectedIndex],


    );
  }
}
