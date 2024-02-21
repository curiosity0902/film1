import 'package:flutter_films/pages/auth.dart';
import 'package:flutter_films/pages/home.dart';
import 'package:flutter_films/pages/reg.dart';

final routes = {
  '/': (context) => const AuthPage(),
  '/reg': (context) => const RegistrationPage(),
  '/home': (context) => const HomePage(),
};
