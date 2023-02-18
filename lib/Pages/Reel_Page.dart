// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:insta_rebuild/Pages/Feed.dart';
import 'Feed.dart';

class Reel extends StatelessWidget{
  @override
  Widget build(BuildContext context) => Scaffold(
    body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(fit: BoxFit.cover, image: AssetImage('assets/feed/reels/tate_vs_geordie.png',),),),
      child: Stack(children: [
        Positioned(top: 10, left: 10,
          child: Text('Reels', style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
        ),
        Positioned(bottom: 20, left: 20,
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              decoration: BoxDecoration(color: Colors.grey[800],
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.repeat_one_rounded, color: Colors.white, size: 20,),
                    SizedBox(width: 5),
                    Text('Try Remix ', style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w700),),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Row(children: [
              Container(height: 40, width: 40,
                decoration: BoxDecoration(border: Border.all(color: Colors.black),borderRadius: BorderRadius.all(Radius.circular(30),),
                  image: DecorationImage(fit: BoxFit.fill, image: AssetImage('assets/feed/profile/profile_picture.png'),),),
              ),
              SizedBox(width: 10,),
              Text('tatesecrets', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 17),),
              SizedBox(width: 10,),
              Container(
                decoration:
                BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Align(alignment: Alignment.center, child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text('Follow', style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),),
                ),),
              ),
            ],),
            SizedBox(height: 10,),
            RichText(text: TextSpan(
                style: TextStyle(color: Colors.white, fontSize: 15),
                children: <TextSpan>[
                  TextSpan(text: 'Remix with '),
                  TextSpan(text: 'TopG', style: TextStyle(fontWeight: FontWeight.bold),),
                ]
            ),
            ),
            Text('What a Clown 🤡 ...', style: TextStyle(color: Colors.white, fontSize: 17),),
            SizedBox(height: 10,),
            Row(children: [
              Icon(FontAwesomeIcons.music, color: Colors.white, size: 15,),
              SizedBox(width: 10,),
              Text('TopG - Original audio', style: TextStyle(color: Colors.white, fontSize: 20),),
            ],)
          ],),
        ),
        Positioned(top: 10, right: 10, child: IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined, color: Colors.white, size: 40,),)),
        Positioned(right: 10, bottom: 20,
          child: Column(crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.heart, color: Colors.white, size: 30,),),
              Text('Likes', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              IconButton(onPressed: (){}, icon: Icon(Icons.chat_bubble_outline_outlined, color: Colors.white, size: 30),),
              Text('1.995', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.paperPlane, color: Colors.white, size: 30),),
              IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz_rounded, color: Colors.white, size: 30),),
              SizedBox(height: 10,),
              Container(height: 40, width: 40,
                decoration: BoxDecoration(border: Border.all(color: Colors.white),borderRadius: BorderRadius.all(Radius.circular(8),),
                  image: DecorationImage(fit: BoxFit.fill, image: AssetImage('assets/feed/feed_logos/meme_ig.png'),),),
              ),
            ],
          ),
        ),
      ],
      ),
    ),
  );
}