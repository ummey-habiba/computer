import 'package:computer/home%20page/card.dart';
import 'package:flutter/material.dart';
import '../constant.dart';
import '../details page/detailsScreen.dart';
import '../models/products.dart';
import 'category list.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  static const String routeName = '/';

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        title: const Text('Dashboard',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        actions:[
          IconButton(
            icon: const Icon(Icons.notifications_active,color: Colors.white,),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
        Container(
        margin: const EdgeInsets.all(kDefaultPadding),
        padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding, vertical: kDefaultPadding / 4),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.4),
          borderRadius: BorderRadius.circular(20),
        ),
        child: const TextField(
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            icon: Icon(
              Icons.search_rounded,
              color: Colors.white,
            ),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: 'Search...',
            hintStyle: TextStyle(color: Colors.white),
          ),
        ),
      ),//SearchBox
            const Category(),
            const SizedBox(height: kDefaultPadding / 1),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 70),
                    decoration: const BoxDecoration(
                      color: kBackgroundColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                  ),
                  ListView.builder(
                    itemCount:ProductList.length,
                    itemBuilder: (context, index) => productCard(
                      index: index,
                      product:ProductList[index],
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                              product: ProductList[index],
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
