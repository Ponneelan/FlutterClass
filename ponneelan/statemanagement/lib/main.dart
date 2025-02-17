import 'provider_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'homepage.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => counter()),
      ChangeNotifierProvider(create: (_) => shopping())
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homepage(),
    );
  }
}
