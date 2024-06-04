import 'package:flutter/material.dart';
import 'package:flutter_tarea3/app/view/ejemplos/first_page.dart';
import 'package:flutter_tarea3/app/view/game_page.dart';
import 'package:flutter_tarea3/app/view/ejemplos/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tarea 3',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: const GamePage(),
      home: const FirstView(),
    );
    // This is the theme of your application.
  }
}