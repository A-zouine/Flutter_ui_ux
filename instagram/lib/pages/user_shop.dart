import 'package:flutter/material.dart';
class UserShop extends StatelessWidget {
  const UserShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:  [
            const Text('Shop', style :TextStyle(color :Colors.grey , fontWeight: FontWeight.bold)),
            Row(
              children: const [
                Icon(Icons.cast_connected),
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Icon(Icons.account_balance),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color : Colors.grey[200],
                borderRadius: BorderRadius.circular(9),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [
                    Icon(Icons.search),
                    Text('Search'),
                  ],
                ),
              ),
            ),
          ),
          Expanded(child: GridView.builder(
          itemCount: 9,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(2),
                  child: Container(
                    color: Colors.blue[200],
                  ),
                );
              },))
        ],
      ),
    );
  }
}
