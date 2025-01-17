import 'package:flutter/material.dart';
import 'loginPage/first_page.dart';

// Thêm thư viện animate

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto', // Sử dụng font Roboto
      ),
      debugShowCheckedModeBanner: false,
      home: const FirstPage(),
    );
  }
}
