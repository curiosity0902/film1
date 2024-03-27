import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_films/database/user_service/service.dart';
import 'package:flutter_films/routes/routes.dart';
import 'package:flutter_films/themes/dark.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options:  const FirebaseOptions(
    apiKey: 'AIzaSyDRMNHWhfP5DnxQAU0TIZGmlB56Xy3i7Ck', 
    appId: '1:951967661425:android:a54486a0d0eafc97130ad0', 
    messagingSenderId: '951967661425', 
    projectId: 'flutterfilms320',
    storageBucket: 'flutterfilms320.appspot.com'
    ),
  );
  runApp(const AppTheme());
}
class AppTheme extends StatelessWidget {
  const AppTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      initialData: null,
      value: AuthService().currentUser,
      child: MaterialApp(
      title: 'КиноГоу',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: routes,
      theme: themeData,
    ),
    );
  }
}
