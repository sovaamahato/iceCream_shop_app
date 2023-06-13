import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Colors.grey[200],
      ),
      child: Column(children: [
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Image.asset(
            "images/st.png",
            height: 250,
          ),
        ),
        const SizedBox(
          height: 27,
        ),
        const Text(
          "Straw Berry",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          "Rs.100",
          style: TextStyle(fontSize: 15, color: Colors.grey[800]),
        ),
        const SizedBox(
          height: 15,
        ),

//add to cart button
        Container(
          width: 50,
          padding: const EdgeInsets.all(9),
          decoration: BoxDecoration(
              color: Colors.brown, 
              borderRadius: BorderRadius.circular(10)),
          child: const Center(
            child: Text(
              "+",
              style: TextStyle(
                color: Colors.white,
                fontSize: 23),
            ),
          ),
        )
      ]),
    );
  }
}
