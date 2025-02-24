
import 'package:flutter/material.dart';

class Textform extends StatelessWidget {
  const Textform({super.key});

  @override
  Widget build(BuildContext context) {
    return     TextField(
      decoration: InputDecoration(border:OutlineInputBorder(borderRadius: BorderRadius.circular(15),),
        hintText: "Enter yout email",
      ),
    );
  }
}
