// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:insta_rebuild/Pages/Feed.dart';

class Search extends StatelessWidget{
  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.black,
    body: CustomScrollView(slivers: [
      SliverToBoxAdapter(child: SizedBox(height: 10,),),
      SliverAppBar(expandedHeight: 50,
        backgroundColor: Colors.black,
        actions: [Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10, right: 40,),
          child: GestureDetector(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Feed(),),);},
            child: Container(
              height: 100,
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
      SliverToBoxAdapter(
        child: GridView(shrinkWrap: true,
          scrollDirection: Axis.vertical,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: 1, mainAxisSpacing: 1),
          children: [
            Image.asset('assets/search/square_1.png', fit: BoxFit.fill),
            Image.asset('assets/search/square_2.png', fit: BoxFit.fill),
            Image.asset('assets/search/square_3.png', fit: BoxFit.fill),
            Image.asset('assets/search/square_4.png', fit: BoxFit.fill),
            Image.asset('assets/search/square_5.png', fit: BoxFit.fill),
            Image.asset('assets/search/square_6.png', fit: BoxFit.fill),
            Image.asset('assets/search/square_7.png', fit: BoxFit.fill),
            Image.asset('assets/search/square_8.png', fit: BoxFit.fill),
            Image.asset('assets/search/square_9.png', fit: BoxFit.fill),
            Image.asset('assets/search/square_10.png', fit: BoxFit.fill),
            Image.asset('assets/search/square_11.png', fit: BoxFit.fill),
            Image.asset('assets/search/square_12.png', fit: BoxFit.fill),
            Image.asset('assets/search/square_13.png', fit: BoxFit.fill),
            Image.asset('assets/search/square_14.png', fit: BoxFit.fill),
            Image.asset('assets/search/square_15.png', fit: BoxFit.fill),
            Image.asset('assets/search/video_1.png', fit: BoxFit.fill),
            Image.asset('assets/search/video_2.png', fit: BoxFit.fill),
            Image.asset('assets/search/video_3.png', fit: BoxFit.fill),

          ],
        ),
      ),
    ],
    ),
  );

}
