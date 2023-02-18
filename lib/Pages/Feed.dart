// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/services.dart';


class Feed extends StatelessWidget{

  List<MyPost> posts = [
    MyPost(
        account: "faktastisch",
        logo: 'assets/feed/feed_logos/faktastisch.png',
        post: 'assets/feed/feed_posts/feed_post_1.png',
        likedBy: 'assets/feed/post_likes_people/like_pfp_1.png',
        likeName: 'davinCi',
        caption: 'Die Studienergebnisse der ersten\nMedikaments zur Verlangsamung des Ausbruchs von...',
        hashtag: '',
        comments: '773'),


    MyPost(
        account: "dailystoic",
        logo: 'assets/feed/feed_logos/dailystoic.png',
        post: 'assets/feed/feed_posts/feed_post_4.png',
        likedBy: 'assets/feed/post_likes_people/like_pfp_2.png',
        likeName: 'leonarDo',
        caption: "There is laziness and then there is\nprocrastination. The lazy never do what they're...",
        hashtag: '',
        comments: '110'),

    MyPost(
        account: "meme.ig",
        logo: 'assets/feed/feed_logos/meme_ig.png',
        post: 'assets/feed/feed_posts/feed_post_3.png',
        likedBy: 'assets/feed/post_likes_people/like_pfp_3.png',
        likeName: 'copernicUs',
        caption: 'How long do you think humans will be around for? 🤔',
        hashtag: '#memereport 🪐',
        comments: '490'),

    MyPost(
        account: 'yoodel.co',
        logo: 'assets/feed/feed_logos/yoodel.png',
        post: 'assets/feed/feed_posts/feed_post_2.png',
        likedBy: 'assets/feed/post_likes_people/like_pfp_4.png',
        likeName: 'rafaEl',
        caption: 'Funniest sh*t ever haha',
        hashtag: '',
        comments: '234'),

    MyPost(
      account: "club_b30",
      logo: 'assets/feed/feed_logos/ad_logo.png',
      post: 'assets/feed/feed_posts/feed_post_ad.png',
      likedBy: 'assets/feed/post_likes_people/like_pfp_5.png',
      likeName: 'michelangeLo',
      caption: 'Get money',
      hashtag: '',
      comments: '781'),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.black,
    appBar: AppBar(systemOverlayStyle: SystemUiOverlayStyle(statusBarBrightness: Brightness.dark, statusBarIconBrightness: Brightness.dark),
      title: Row(
        children: [
          GestureDetector(onTap: (){}, child: Container(width: 170, child: Image.asset('assets/feed/profile/insta_logo_full.png',fit: BoxFit.fitHeight))),
          Expanded(child: Container(),),
          IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.plusSquare, size: 30,),),
          SizedBox(width: 10,),
          IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.heart, size: 30,),),
          SizedBox(width: 10,),
          IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.paperPlane, size: 30,),),],),
      centerTitle: false,
      backgroundColor: Colors.black,
      shadowColor: Colors.grey,
    ),
    body: ListView.builder(
      itemCount: posts.length,
      shrinkWrap: true,
      // physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return PostItem(posts[index]);
        // return Text("$index");
      },
    ),
  );

}

class MyPost {
  String account;
  String logo;
  String post;
  String likedBy;
  String likeName;
  String caption;
  String hashtag;
  String comments;

  MyPost({
    required this.account,
    required this.logo,
    required this.post,
    required this.likedBy,
    required this.likeName,
    required this.caption,
    required this.hashtag,
    required this.comments,
  });
}

class PostItem extends StatelessWidget{
  final MyPost feedItem;

  const PostItem(this.feedItem, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(feedItem.logo, scale: 1.5,),
              SizedBox(width: 5,),
              Text(feedItem.account, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),),
              Expanded(child: Container(),),
              IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz_rounded, color: Colors.white, size: 25,),),
            ],
          ),
        ),
        Image.asset(feedItem.post,),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.heart, color: Colors.white,)),
            IconButton(onPressed: (){}, icon: Icon(Icons.chat_bubble_outline_outlined, color: Colors.white,)),
            IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.paperPlane, color: Colors.white,)),
            Expanded(child: Container()),
            IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.bookmark, color: Colors.white,),),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(backgroundImage: AssetImage(feedItem.likedBy,), radius: 15),
              SizedBox(width: 5,),
              RichText(text: TextSpan(
                  style: TextStyle(color: Colors.white, fontSize: 15),
                  children: <TextSpan>[
                    TextSpan(text: 'Liked by '),
                    TextSpan(text: feedItem.likeName, style: TextStyle(fontWeight: FontWeight.bold),),
                    TextSpan(text: ' and'),
                    TextSpan(text: ' others', style: TextStyle(fontWeight: FontWeight.bold),),
                  ]
              ),
              ),
            ],
          ),
        ),
        Padding(
        padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 8),
          child: RichText(text: TextSpan(style: TextStyle(fontSize: 15), children: <TextSpan>[
                TextSpan(text: '${feedItem.account} ', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                TextSpan(text: '${feedItem.caption} ', style: TextStyle(color: Colors.white, ),),
                TextSpan(text: 'more ', style: TextStyle(color: Colors.grey,),),

                // TextSpan(text: feedItem.hashtag, style: TextStyle(color: Colors.lightBlue[100]),),
              ]
          ),
          ),
        ),
        TextButton(onPressed: (){},
            child: Text('View ${feedItem.comments} comments', style: TextStyle(color: Colors.grey),),),
    ],);
  }
}