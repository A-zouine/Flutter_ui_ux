import 'package:diaggy/homescreen.dart';
import 'package:flutter/material.dart';

import 'components/my_button.dart';
import 'components/my_textfield.dart';
import 'components/squre_tile.dart';
import 'homepage.dart';


class RegisterPage extends StatefulWidget {
  RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // text editing controllers
  final usernameController = TextEditingController();

  final passwordController = TextEditingController();
  final emailController = TextEditingController();

  bool isDark = false;
  void changeMode(){
    setState(() {
      isDark =! isDark;
    });
  }

  // sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDark ? Colors.black38 : Colors.grey[300],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: isDark ? Colors.black38 : Colors.grey[300],
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                width: 40,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                ),
                child: IconButton(onPressed: changeMode ,icon : changeModeIcon(isDark))
            ),
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [],
          )
        ),
      ),
    );
  }
}


