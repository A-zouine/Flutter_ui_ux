import 'package:flutter/material.dart';
class MyStories extends StatelessWidget {
  const MyStories({Key? key, required this.img}) : super(key: key);

  final String img;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const  BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
            child: Container(
              decoration: const BoxDecoration(
                color :Colors.white,
              ),
              child: Image.asset(img,),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20) , bottomRight: Radius.circular(20))
            ),
            height: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(Icons.link),
                Icon(Icons.share),
                Icon(Icons.linked_camera)
              ],
            ),

          )
        ],
      ),
    );
  }
}
