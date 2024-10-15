
import 'package:computer/details%20page/detailsScreen.dart';
import 'package:computer/models/products.dart';
import 'package:flutter/material.dart';

import 'home page/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
initialRoute: DashBoard.routeName,
      routes: {
        DashBoard.routeName:(context)=> DashBoard(),


      },
    );
  }
}

