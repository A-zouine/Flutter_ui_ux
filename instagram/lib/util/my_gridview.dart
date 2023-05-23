import 'package:flutter/material.dart';
import 'package:instagram/pages/user_home.dart';
class MyGridView extends StatelessWidget {
  const MyGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 20,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3
        ), itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(9),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(9),
                child: Container(
                  color: Colors.deepPurple[200],
                  child: Image.asset(images[0]),

                ),
              ),
            ),
          );
        },);
  }
}
