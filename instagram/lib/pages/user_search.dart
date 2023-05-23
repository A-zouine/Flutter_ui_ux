import 'package:flutter/material.dart';

import '../util/my_gridview.dart';
class UserSearch extends StatelessWidget {
  const UserSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(9),
          child: Container(
            padding: const EdgeInsets.all(8),
            color: Colors.grey[200],
            child: Row(
              children: const [
                Icon(Icons.search),
                Text('Search',style: TextStyle(color: Colors.grey),)
              ],
            ),
          ),
        ),
      ),
      body : MyGridView(),
    );
  }
}