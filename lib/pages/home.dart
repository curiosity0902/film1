// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_films/database/user_service/service.dart';
import 'package:flutter_films/pages/bottom.pages/catalog.dart';
import 'package:flutter_films/pages/bottom.pages/favotite.dart';
import 'package:flutter_films/pages/bottom.pages/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AuthService authService = AuthService();
  String title = 'Catalog';
  int index = 0;
  final pages = [
    const CatalogPage(),
    const Favourite(),
    const Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () async {
          await authService.logOut();
          Navigator.popAndPushNamed(context, '/');
          }, icon: const Icon(Icons.exit_to_app)),
          IconButton(onPressed: () {}, icon: const Icon((Icons.person))),
        ],
        leadingWidth: MediaQuery.of(context).size.width * 0.5,
        leading: Card(
          shape: const OutlineInputBorder(
              borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.zero,
            bottomLeft: Radius.zero,
            bottomRight: Radius.circular(20),
          )),
          child: Container(
            alignment: Alignment.center,
            child: Text(
              title,
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
      body: pages.elementAt(index),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
            if (index == 0) {
              title = "Catalog";
            }
            if (index == 1) {
              title = "Favorite";
            }
            if (index == 2) {
              title = "Profile";
            }
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.video_chat,
                color: Colors.green,
              ),
              label: 'Catalog'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: Colors.red,
              ),
              label: 'Favourite'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.yellow,
              ),
              label: 'Profile'),
        ],
      ),
    );
  }
}
