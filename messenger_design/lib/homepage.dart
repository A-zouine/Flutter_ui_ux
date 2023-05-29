import 'package:flutter/material.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool isDark = false;

  void changeMode(){
    setState(() {
      isDark = !isDark;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDark ?  Colors.black38 : Colors.white,
      appBar: AppBar(
        backgroundColor: isDark ?  Colors.black38 : Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/91146035?s=400&u=d2a50efbf7deaab8bdc6ee8f7d0a219a1776a1fa&v=4'),
                ),
                SizedBox(width: 5,),
                Text('Chats',style: TextStyle(color: Colors.grey , fontWeight : FontWeight.bold ),),
              ],
            ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
                ),
                child: const  Icon(Icons.edit),
              ),
              SizedBox(width: 9,),
              IconButton(onPressed: changeMode, icon: isDark ? Icon(Icons.light_mode , color: Colors.white,) : Icon(Icons.dark_mode , color: Colors.black,) ),
            ],
          ),
          ],
        ),
        actions: [

        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(9),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(9),
              ),
              child: Row(
                children: const[
                  Icon(Icons.search),
                  SizedBox(width: 3,),
                  Text('search'),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 60,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children:const   [
                            CircleAvatar(
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/91146035?s=400&u=d2a50efbf7deaab8bdc6ee8f7d0a219a1776a1fa&v=4'),
                            radius: 30,
                            ),
                            CircleAvatar(
                              radius: 8,
                              backgroundColor: Colors.white,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                bottom: 3,
                                end: 3,
                                  ),
                              child: CircleAvatar(
                                radius: 5,
                                backgroundColor: Colors.green,
                              ),

                            ),

                          ],
                        ),
                        SizedBox(height: 9,),
                        Text('ahmedazouineahmed azouine',maxLines: 2,overflow: TextOverflow.ellipsis,
                           style: TextStyle( color : isDark ? Colors.white : Colors.black),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    width: 60,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children:const   [
                            CircleAvatar(
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/91146035?s=400&u=d2a50efbf7deaab8bdc6ee8f7d0a219a1776a1fa&v=4'),
                            radius: 30,
                            ),
                            CircleAvatar(
                              radius: 8,
                              backgroundColor: Colors.white,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                bottom: 3,
                                end: 3,
                                  ),
                              child: CircleAvatar(
                                radius: 5,
                                backgroundColor: Colors.green,
                              ),

                            ),

                          ],
                        ),
                        SizedBox(height: 9,),
                        Text('ahmedazouineahmed azouine',maxLines: 2,overflow: TextOverflow.ellipsis,
                            style: TextStyle( color : isDark ? Colors.white : Colors.black)
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    width: 60,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children:const   [
                            CircleAvatar(
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/91146035?s=400&u=d2a50efbf7deaab8bdc6ee8f7d0a219a1776a1fa&v=4'),
                              radius: 30,
                            ),
                            CircleAvatar(
                              radius: 8,
                              backgroundColor: Colors.white,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                bottom: 3,
                                end: 3,
                              ),
                              child: CircleAvatar(
                                radius: 5,
                                backgroundColor: Colors.green,
                              ),

                            ),

                          ],
                        ),
                        SizedBox(height: 9,),
                        Text('ahmedazouineahmed azouine',maxLines: 2,overflow: TextOverflow.ellipsis,
                            style: TextStyle( color : isDark ? Colors.white : Colors.black)
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    width: 60,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children:const   [
                            CircleAvatar(
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/91146035?s=400&u=d2a50efbf7deaab8bdc6ee8f7d0a219a1776a1fa&v=4'),
                              radius: 30,
                            ),
                            CircleAvatar(
                              radius: 8,
                              backgroundColor: Colors.white,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                bottom: 3,
                                end: 3,
                              ),
                              child: CircleAvatar(
                                radius: 5,
                                backgroundColor: Colors.green,
                              ),

                            ),

                          ],
                        ),
                        SizedBox(height: 9,),
                        Text('ahmedazouineahmed azouine',maxLines: 2,overflow: TextOverflow.ellipsis,
                            style: TextStyle( color : isDark ? Colors.white : Colors.black)
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    width: 60,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children:const   [
                            CircleAvatar(
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/91146035?s=400&u=d2a50efbf7deaab8bdc6ee8f7d0a219a1776a1fa&v=4'),
                              radius: 30,
                            ),
                            CircleAvatar(
                              radius: 8,
                              backgroundColor: Colors.white,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                bottom: 3,
                                end: 3,
                              ),
                              child: CircleAvatar(
                                radius: 5,
                                backgroundColor: Colors.green,
                              ),

                            ),

                          ],
                        ),
                        SizedBox(height: 9,),
                        Text('ahmedazouineahmed azouine',maxLines: 2,overflow: TextOverflow.ellipsis,
                            style: TextStyle( color : isDark ? Colors.white : Colors.black)
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(width: 15,),
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Padding(

                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 60,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Stack(
                                alignment: AlignmentDirectional.bottomEnd,
                                children:const   [
                                  CircleAvatar(
                                    backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/91146035?s=400&u=d2a50efbf7deaab8bdc6ee8f7d0a219a1776a1fa&v=4'),
                                    radius: 30,
                                  ),
                                  CircleAvatar(
                                    radius: 8,
                                    backgroundColor: Colors.white,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.only(
                                      bottom: 3,
                                      end: 3,
                                    ),
                                    child: CircleAvatar(
                                      radius: 5,
                                      backgroundColor: Colors.green,
                                    ),

                                  ),

                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 9,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('ahmed azouine',style : TextStyle(fontWeight : FontWeight.bold , color: isDark ? Colors.white : Colors.black)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('hELLO Man can see you later plaiser  ' , style: TextStyle( color : isDark ? Colors.white : Colors.black)),
                                Text('9:30' , style: TextStyle(color :Colors.green , fontWeight : FontWeight.bold ,  ),)
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
