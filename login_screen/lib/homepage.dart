import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
class MyHomePage extends StatelessWidget {
   MyHomePage({Key? key}) : super(key: key);

   var emailV  = TextEditingController();
   var passwordV = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(Icons.list , color :Colors.black),
        actions: const [
           Icon(Icons.settings , color :Colors.black),
        ],
      ),


      body : Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children :  [
                const Text('Login',style :TextStyle(color :Colors.blue,fontWeight: FontWeight.bold,fontSize: 20)),
                const SizedBox(height: 20,),
                TextFormField(
                  controller: emailV,
                  onFieldSubmitted: (v){
                    print(v.toString());
                  },
                  onChanged: (v){
                    print(v);
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: const  InputDecoration(
                    labelText: 'Email Address',
                    // hintText: 'Email Address',
                    prefixIcon: Icon(Icons.email),
                    suffixIcon: Icon(Icons.account_box_outlined),
                    border : OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20,),
                TextFormField(
                  controller: passwordV,
                  obscureText: true,
                  onFieldSubmitted: (v){

                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: const  InputDecoration(
                    labelText: 'Email Password',
                    // hintText: 'Email Address',
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: Icon(Icons.password),
                    border : OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color : Colors.deepPurpleAccent,
                      ),
                      child: MaterialButton(onPressed: (){
                        print(emailV.text);
                        print(passwordV.text);
                      },
                      child:  const Text('Enter',style: TextStyle(color :Colors.white,),),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color : Colors.deepPurpleAccent,
                      ),
                      child: MaterialButton(onPressed: (){},
                      child:  const Text('Enter',style: TextStyle(color :Colors.white,),),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Dont\'t have accont' ),
                    TextButton(onPressed: (){}, child: Text('Register Now'))
                  ],
                )
              ],

            ),
          ),
        ),
      )
    );
  }
}
