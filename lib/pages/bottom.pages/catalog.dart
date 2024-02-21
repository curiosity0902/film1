import 'package:flutter/material.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          //height: MediaQuery.of(context).size.height * 0.5,
          child: ListTile(
            leading: Image.asset('images/image2.jpg'),
            title: const Text('Фильм 1'),
            subtitle: const Text(
              '2010',
            ),           
          ),
        ),



        Card(
          child: ListTile(),
        ),
        Card(
          child: ListTile(),
        ),
      ],
    );
  }
}
