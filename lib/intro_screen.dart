import 'package:flutter/material.dart';

import 'home_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 175, 169, 112),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
            height: 200,
            child: Image.asset("images/ice-cream.png"),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Something sweet ?",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Get ice cream delivered straight to your door.",
            style: TextStyle(
              //fontWeight: FontWeight.bold, 
            fontSize: 17),
          ),
          const SizedBox(
            height: 45,
          ),
          GestureDetector(
            onTap: ()
            {
              Navigator.push(context,MaterialPageRoute(builder: (context){
                return const HomeScreen();
              }));
            },
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width - 9,
              decoration: BoxDecoration(
                  color: Colors.brown,
                   borderRadius: BorderRadius.circular(8)),
              child:const Center(
                child:  Text(
                  "Enter Shop",
                  style:
                      TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
