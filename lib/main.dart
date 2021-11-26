import 'package:flutter/material.dart';

import 'home_page.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: const Color(0xff005bff),
      ),
      home: const HomePage(

      ),
    );
  }
}
