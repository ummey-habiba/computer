import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  static const String routeName = '/details';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigoAccent,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Back",
              style: TextStyle(fontSize: 24, color: Colors.black),
            ),
            Icon(Icons.shopping_bag_outlined),
          ],
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.indigoAccent,

          ),
          Container(
            height: MediaQuery.of(context).size.height / 1.4,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(78),
                  bottomRight: Radius.circular(78)),
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS666EpXlTFgQerfYQ_oe7eG8vp6qg9Bt7wfg&s')
                ],
              ),
               Column(
                children: [
                  Text(
                    "Acer Aspire 3 A315-23",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "\$22000",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.amber),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Acer Aspire 3 A315-23 Laptop comes with AMD\n Athion Silver 305CU Proccessor(2 core,Base Clock\n2.3GHz,Max Boost Clock:Up to 3.2GHz) 4GB DDR4... ',style: TextStyle(color: Colors.grey),),
                  ),

                ],
              ),

              Card(
                margin: EdgeInsets.only(
                  top: 30,
                  left: 20,
                  right: 20
                ),
                color: Colors.amber,
                child:Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Icon(Icons.mark_chat_unread_sharp,color: Colors.white,),
                    title: Text('Chat',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),
                    ),
                    trailing: Icon(Icons.shopping_basket,color: Colors.white,),
                  ),
                )


              )],
          )
        ],
      ),
    );
  }
}
