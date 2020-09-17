import 'package:flutter/material.dart';
import 'package:nubank/pages/home.dart';

void main() => runApp(AppWidget());

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nubank Clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Helvetica Neue'
      ),
      initialRoute: 'home',
      routes: {
        'home' : (_) => HomePage()
      }
    );
  }
}