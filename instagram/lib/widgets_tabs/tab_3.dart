import 'package:flutter/material.dart';
class tab_3 extends StatelessWidget {
  const tab_3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(gridDelegate:
    const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3
    ), itemBuilder: (context, index) {

      return Padding(padding: const EdgeInsets.all(2),
        child: Container(
          color: Colors.deepOrange[200],
        ),);
    },);
  }
}