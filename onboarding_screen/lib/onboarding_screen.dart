import 'package:flutter/material.dart';
class onboarding_screen extends StatelessWidget {
  const onboarding_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(),
            // Image.asset("",height: 250),
            Icon(Icon.)
            const Spacer(),
            Text("find the item for been look betty this screen ",
            style: Theme.of(context).textTheme.headline5!.copyWith(fontWeight: FontWeight.w500),textAlign: TextAlign.center,),
          const SizedBox(height: 16,),
            const Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
            textAlign: TextAlign.center,
          ),
            const Spacer(),
          ],
        ),
      )


    );
  }
}
