import 'package:flutter/material.dart';
import 'pages/mainPage.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diary Book',
      theme: ThemeData(
        visualDensity:VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.grey,
      ),
      home: const MainPage(),
    );
  }
}



