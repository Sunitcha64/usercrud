import 'package:flutter/material.dart';
import 'Screen/home.dart';
import 'package:flutter_application_1/Screen/Login.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'User CRUD',
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/login':(context) => const Login(),
      },
    );
  }
}