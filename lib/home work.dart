import 'package:flutter/material.dart';
import 'package:flutter_product_card/flutter_product_card.dart';

class HomeWork extends StatefulWidget {
  const HomeWork({super.key});

  @override
  State<HomeWork> createState() => _HomeWorkState();
}

class _HomeWorkState extends State<HomeWork> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fast Draw"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {},
          ),
          const SizedBox(width: 10),
        ],
        leading:  Icon(Icons.arrow_back_rounded),
      ),
      body:
        Column(
          children: [
            Stack(
             children: [
               Container(
                 height: MediaQuery.of(context).size.height/2,
                 width: MediaQuery.of(context).size.width,
                 child: Image(
                   image: NetworkImage("https://fitandflex.in/cdn/shop/products/81uJzA8-fpL._SL1500_1445x.jpg?v=1715958416"),
                 ),

               ),
               Container(
                 height: MediaQuery.of(context).size.height/2,
                 width: MediaQuery.of(context).size.width,
                 child: Align(
                   alignment: Alignment.bottomLeft,
                   child: Padding(
                     padding: const EdgeInsets.only(left: 8,bottom: 24),
                     child: Text("Almond Musli",style: TextStyle(color: Colors.white,fontSize: 29),),
                   ),
                 ),

               ),
             ],
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.circle_notifications_outlined),
                title: Text("Created by Sadik"),
              trailing: Icon(Icons.arrow_forward_ios_rounded),//mwldjnk  kwfnf kefjfnefnjefn
              ),

            ),
            ListTile(
              subtitle: Text("Almond Musli is really good for break fast."
                  " This is very neutricious"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {});
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
              ),
              child: Text("Start Cooking",style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
    );
  }
}
