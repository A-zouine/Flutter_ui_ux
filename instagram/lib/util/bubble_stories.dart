import 'package:flutter/material.dart';
class BubbleStories extends StatelessWidget {
  const BubbleStories({Key? key, required this.name, required this.icon }) : super(key: key);
  final String name;
  final IconData icon;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 65,
            width: 65,
            decoration:  BoxDecoration(
              shape: BoxShape.circle,
              color :Colors.blue[200],
            ),
            child: Icon(icon,),
          ),
          const SizedBox(
            height: 9,
          ),
          Text(name)
        ],
      ),
    );
  }
}
