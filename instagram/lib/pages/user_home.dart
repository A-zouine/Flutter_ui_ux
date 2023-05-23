import 'package:flutter/material.dart';
import 'package:instagram/util/bubble_stories.dart';
import 'package:instagram/util/stories.dart';
import 'package:instagram/util/user_stories.dart';
List images = [
  'lib/images/lemonade_stand_bro.png',
  'lib/images/lemonade_stand_cuate.png',
  'lib/images/lemonade_stand_pana.png',
  'lib/images/lemonade_stand_bro.png',
  'lib/images/lemonade_stand_cuate.png',
  'lib/images/lemonade_stand_pana.png',
];
List<IconData> listIcon =  [
  Icons.account_balance,
  Icons.adb,
  Icons.account_balance_wallet_rounded,
  Icons.account_box_outlined,
  Icons.image_outlined,
];

List<String> storiesName = [
'real Madrid',
'widad',
'raja',
'fcb',
'widad',
'widad',
];

class UserHome extends StatelessWidget {
   UserHome({Key? key}) : super(key: key);






  List<IconData> listIcon =  [
   Icons.account_balance,
    Icons.adb,
    Icons.account_balance_wallet_rounded,
    Icons.account_box_outlined,
   Icons.image_outlined,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:   [
            const Text('Instagram', style :TextStyle(color :Colors.black)),
            Row(
              children: const [
                Icon(Icons.add),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Icon(Icons.favorite),
                ),
                Icon(Icons.share),
              ],
            ),
          ],
        ),
      ),
      body : Column(
      //   Stories
        children: [
          Container(
            height: 110,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
                itemBuilder: (context, index) =>  BubbleStories(name: storiesName[index], icon: listIcon[index],)),
          ),
          Expanded(

            child: ListView.builder(
              itemCount: 6,
              // itemBuilder: (context, index) => MyStories(img: images[index]),),
              itemBuilder: (context, index) => UserStories(img: images[index],nm: storiesName[index]),


          ),),
        ],
      //   Posts
      )
    );
  }
}