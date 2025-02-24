
import 'package:flutter/material.dart';
import 'loginpage.dart';


void main() {
  runApp(   pharmacyApp());
}
class pharmacyApp extends StatelessWidget {
  const pharmacyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:loginpage(),
    );
  }
}



