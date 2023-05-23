import 'package:flutter/material.dart';
import 'package:instagram/pages/user_home.dart';
import 'package:instagram/pages/user_search.dart';
import 'package:instagram/pages/user_settings.dart';
import 'package:instagram/pages/user_shop.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  
  void _changerPage(int index){
    setState(() {
      currentIndex = index;
    });
  }
  final List<Widget>  _children =   [
    UserHome(),
    UserSearch(),
    UserShop(),
    UserSetting(),
  ];
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: _children[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Colors.deepPurple[400],
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (value) => _changerPage(value),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: 'searsh'),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'settings'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'profile')
        ],
      ),
    );
  }
}
