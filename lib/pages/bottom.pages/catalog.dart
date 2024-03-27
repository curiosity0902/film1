import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CatalogPage extends StatefulWidget {
  const CatalogPage({super.key});

  @override
  State<CatalogPage> createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage> {
  Widget filmsCard(BuildContext context, dynamic docs) {
    return Card(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.network(
                docs['image'],
                width: MediaQuery.of(context).size.width * 0.3,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: Column(
                  children: [
                  Text(docs['name'], style: const TextStyle(color:   Colors.black, fontWeight: FontWeight.bold, fontSize: 22),), 
                Text(docs['description']),
                ],
              ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            IconButton(onPressed: (){}, icon:const Icon(Icons.favorite)),
            IconButton(onPressed: (){ Navigator.popAndPushNamed(context, '/film_page');
            }, icon: const Icon(Icons.play_arrow))],
          )
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(stream: FirebaseFirestore.instance.collection('films').snapshots(), builder: (context, snapshot){
      if (!snapshot.hasData) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      } else
      {
          return ListView.builder(
            itemCount:  snapshot.data!.docs.length,            
            itemBuilder: (context, index)
            {
              return filmsCard(context, snapshot.data!.docs[index]);
            });      
      }
    }, );
  }
}
