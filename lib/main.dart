import 'package:flutter/material.dart';
import 'package:lolxn_calculator/home.dart';

void main() {
  runApp(
    const Calculator(),
  );
}

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}
