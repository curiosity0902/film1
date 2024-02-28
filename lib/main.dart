import 'package:flutter/material.dart';
import 'package:flutter_films/routes/routes.dart';
import 'package:flutter_films/themes/dark.dart';

void main() {
  runApp(const AppTheme());
}
class AppTheme extends StatelessWidget {
  const AppTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'КиноГоу',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: routes,
      theme: themeData,
    );
  }
}
