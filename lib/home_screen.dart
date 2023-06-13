import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:icecream_shop/cart.dart';
import 'package:icecream_shop/shop.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var selectedIndex = 0;
  List navBarlist=[
   Shop(),
     Cart()

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     bottomNavigationBar: GNav(
      mainAxisAlignment: MainAxisAlignment.center,
      activeColor: Colors.purple,
      backgroundColor: Colors.white,
      color: Colors.black,
      gap: 0,
      onTabChange: (index){
        setState(() {
          selectedIndex=index;
        });
        
      },
      
      tabs:const  [
      GButton(icon: Icons.home,text: "Shop",),
      GButton(icon: Icons.shop_2_sharp,text: "Cart",)
     ],
     
     ),

     body:Center(child: navBarlist[selectedIndex],)

    );
  }
}