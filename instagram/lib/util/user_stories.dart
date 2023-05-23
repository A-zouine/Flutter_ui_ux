import 'package:flutter/material.dart';
class UserStories extends StatelessWidget {
  const UserStories({Key? key, required this.nm, required this.img}) : super(key: key);

  final String nm;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 45,
                    width: 45,
                    decoration: const  BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                    ),
                    child: Image.asset(img),
                  ),
                  SizedBox(width: 8,),
                  Text(nm, style :TextStyle(fontWeight : FontWeight.bold)),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                ),
                  child: Icon(Icons.list_outlined,color: Colors.white,)),
            ],
          ),
        ),
        Container(
          height: 400,
          color :Colors.grey[300],
          child: Image.asset(img),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children : const [
                  Icon(Icons.favorite),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.chat),
                  ),
                  Icon(Icons.share),
                ]
              ),
              const Icon(Icons.bookmark)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Row(
            children: const [
              Text('like by '),
              Text('azouine' , style : TextStyle(color :Colors.blue, fontWeight : FontWeight.bold)),
              Text(' and '),
              Text('others' , style : TextStyle(color :Colors.blue, fontWeight : FontWeight.bold)),
            ],
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(left: 15 ,top: 8),
          child: RichText(
              text: const TextSpan(
                style: TextStyle(color :Colors.black),
                  children: [
                    TextSpan(text: 'azouine  ' ,style : TextStyle(color :Colors.blue, fontWeight : FontWeight.bold),),
                    TextSpan(text: 'Search with your voice. Sign in. LORN. LORN. Official Artist Channel. @Lornnn. @Lornnn 113K subscribers 19 videos. music and motion from Lorn. Subscribe.' ,),
                  ],
              ),
          ),

        )


      ],
    );
  }
}
