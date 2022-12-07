

import 'package:flutter/material.dart';

import 'first_page.dart';

void main() {
  runApp(MeninTirkemem());
}

class MeninTirkemem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BirinchiBarak(),
    );
  }
}