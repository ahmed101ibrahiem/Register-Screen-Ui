import 'package:flutter/material.dart';
import 'presentation/view/animated_list.dart';
import 'presentation/view/login_screen.dart';
import 'presentation/view/register_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegisterScreen(),
    );
  }
}