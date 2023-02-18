// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:insta_rebuild/Pages/Feed.dart';
import 'Feed.dart';

// body: CustomScrollView(slivers: [
//   SliverAppBar(
//     backgroundColor: Colors.black,
//     centerTitle: false,
//     title: Text('Shop',
//       style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),),
//     actions: [
//       Padding(
//         padding: const EdgeInsets.only(right: 8.0),
//         child: IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart, color: Colors.white, size: 30,),),
//       ),
//       Padding(
//         padding: const EdgeInsets.only(right: 8.0),
//         child: IconButton(onPressed: (){}, icon: Icon(Icons.menu, color: Colors.white, size: 30,),),
//       ),
//     ],
//     // flexibleSpace: FlexibleSpaceBar(
//     //   background: Container(
//     //     color: Colors.blue,
//     //   ),
//     //   title: Text('R E L E A S E S'),
//     // ),
//   ),
class Shop extends StatelessWidget{
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      toolbarHeight: 150,
      backgroundColor: Colors.black,
      centerTitle: false,
      title: Column(
        children: [
          Align(alignment: Alignment.centerLeft,
            child: Text('Shop',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5,),
            child: GestureDetector(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Feed(),),);},
              child: Container(
                height: 40,
                width: 350,
                decoration:
                BoxDecoration(
                    color: Colors.grey[900],
                    border: Border.all(color: Colors.black,),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Align(alignment: Alignment.centerLeft, child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Icon(Icons.search, color: Colors.grey[500], size: 23,),
                      SizedBox(width: 5),
                      Text('Search', style: TextStyle(color: Colors.grey[500], fontSize: 18),)
                    ],
                  ),
                )),
              ),
            ),
          ),
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart, color: Colors.white, size: 30,),),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: IconButton(onPressed: (){}, icon: Icon(Icons.menu, color: Colors.white, size: 30,),),
        ),
      ],
    ),
    body: Container(color: Colors.black,
      child: ListView(
        shrinkWrap: true,
        children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
          child: GestureDetector(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Feed(),),);},
            child: Container(
              height: 40,
              width: 350,
              decoration:
              BoxDecoration(
                  color: Colors.grey[900],
                  border: Border.all(color: Colors.black,),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Align(alignment: Alignment.center, child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text('Videos', style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),),
              )),
            ),
          ),
        ),
        GridView(physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 1, mainAxisSpacing: 1),
          children: [
            Image.asset('assets/shop/shop_1.png', fit: BoxFit.fill),
            Image.asset('assets/shop/shop_2.png', fit: BoxFit.fill),
            Image.asset('assets/shop/shop_3.png', fit: BoxFit.fill),
            Image.asset('assets/shop/shop_4.png', fit: BoxFit.fill),
            Image.asset('assets/shop/shop_5.png', fit: BoxFit.fill),
            Image.asset('assets/shop/shop_6.png', fit: BoxFit.fill),
          ],
        ),
      ],
      ),
    ),
  );
}




