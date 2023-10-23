import 'package:flutter/material.dart';

import 'authontication/login_page.dart';
import 'authontication/register_page.dart';
import 'homepage/home_page.dart';
import 'homepage/iteam_page.dart';
import 'homepage/product_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductPage(),
    );
  }
}


