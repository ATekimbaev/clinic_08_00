import 'package:app_0800/ui/screens%20/login_screen.dart';
import 'package:app_0800/ui/screens%20/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'SF Pro Display',
      ),
      home: const LoginScreen(),
    );
  }
}
