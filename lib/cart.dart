import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  //const Cart({super.key});

  List cartItem = [
    ["images/choco.png", "Choco", "Rs.50"],
    ["images/st.png", "straw Berry", "Rs.100"],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 228, 219, 136),
        appBar: AppBar(
          foregroundColor: Colors.brown,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            "Cart Item",
            style: TextStyle(
              color: Colors.brown,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 70,
              ),
              SizedBox(
                height: 550,
                child: ListView.builder(
                    itemCount: cartItem.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        leading: Image.asset(cartItem[index][0]),
                        trailing: const Text(
                          "Buy Now",
                          style: TextStyle(color: Color.fromARGB(255, 8, 77, 10), fontSize: 15),
                        ),
                        title: Text(cartItem[index][1]),
                        subtitle: Text(cartItem[index][2]),
                      );
                    }),
              ),
            ],
          ),
        ));
  }
}
