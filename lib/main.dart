import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/cart.dart';
import 'package:flutter_application_1/pages/First_page.dart';
import 'package:flutter_application_1/pages/Intoduction.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Cart(),
    child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Intoduction(),
    );
  }
}