import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'page_view_pages/page1.dart';
import 'page_view_pages/page2.dart';
import 'page_view_pages/page3.dart';

class Shop extends StatelessWidget {
  //const Shop({super.key});
  final _controller =PageController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 228, 219, 136),
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: const Icon(
            Icons.menu,
            color: Colors.black,
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            //text-------------------
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Something Sweet ?",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(Icons.arrow_forward)
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            //search bar------------------------------
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey[200]),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:const [
                    Text(
                      "Search",
                      style: TextStyle(color: Colors.grey,fontSize: 18),
                    ),
                    Icon(Icons.search,color: Colors.grey,)
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10,),

            //dot inidicator----------------------------------

            SmoothPageIndicator(
              
              controller: _controller, count: 3),
           const SizedBox(height: 15,),

            ////page view--------------------------------
            SizedBox(
              height: 450,
              child: PageView(
                
                controller: _controller,
                children: [
                Page1(),
                Page2(),
                Page3(),
              ]),
            ),
            const SizedBox(height: 8,),
            
          ],
        ),
      ),
    );
  }
}
