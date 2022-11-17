import 'package:flutter/material.dart';

import 'ui/screens/my_home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TicTacToe',
      theme: ThemeData(        
        useMaterial3: true
      ),
      debugShowCheckedModeBanner: false,      
      home: const MyHomePage(),
    );
  }
}

