import 'package:flutter/material.dart';

import 'package:flutter_ui_design/views/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
      theme: ThemeData(
      
      scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
      ),
      home: WelcomeScreen(),
    );
  }
}

