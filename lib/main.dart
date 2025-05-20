import 'package:flutter/material.dart';
import 'package:homework_with_team/pages/contact_page.dart';

import 'pages/home_pages.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContactPage()
    );
  }
}


