import 'package:flutter/material.dart';
import 'package:instagram/pages/user_home.dart';
import 'package:instagram/util/bubble_stories.dart';
import 'package:instagram/widgets_tabs/tab_1.dart';
import 'package:instagram/widgets_tabs/tab_2.dart';

import '../widgets_tabs/tab_3.dart';
import '../widgets_tabs/tab_4.dart';
class UserSetting extends StatelessWidget {
  const UserSetting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
                ),
                child: Image.asset(images[2]),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: const  [
                        Text('203',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                        Text('Posts',style: TextStyle(fontSize: 15),),
                      ],
                    ),
                    Column(
                      children: const  [
                        Text('203',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                        Text('Posts',style: TextStyle(fontSize: 15),),
                      ],
                    ),
                    Column(
                      children: const  [
                        Text('203',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                        Text('Posts',style: TextStyle(fontSize: 15),),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        body : Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  const Text('azouine',
                  style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),
                  ),
                  const Text('I created app mobile ',
                      style: TextStyle(color: Colors.black),
                 ),
                  const Text('https://www.youtube.com/watch?v=OLNtqps24c0',
                    style: TextStyle(color: Colors.black),

                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(2),
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, )
                          ),
                          child: const Text('Edit Profile'),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(2),
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey)
                          ),
                          child: const Text('Add Tools'),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(2),
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey )
                          ),
                          child: const Text('Insetight'),
                        ),
                      ),

                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 110,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) => BubbleStories(
                        icon :listIcon[index], name: storiesName[index],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),

                ],
              ),
            ),
            const TabBar(
                tabs:  [
                  Icon(Icons.grading),
                  Icon(Icons.video_call),
                  Icon(Icons.person),
                  Icon(Icons.shop),
                ]),
            const Expanded(child: TabBarView(
              children: [
                tab_1(),
                tab_2(),
                tab_3(),
                tab_4(),
              ],
            )),
          ],
        ),
      ),
    );
  }
}