import 'dart:io';
import 'dart:js_interop';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:image_picker/image_picker.dart';


final colRef = FirebaseFirestore.instance.collection('users');

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  
  final String userId = FirebaseAuth.instance.currentUser!.uid.toString();
  File? _selectFile;
  XFile? _filename;
  dynamic userDoc;

  selectImageGallary() async {
    final returnImage = 
    await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      _selectFile = File(returnImage!.name);
      _filename = returnImage;
    });
  }

  getByUserId() async {
      DocumentSnapshot documentSnapshot = await colRef.doc(userId).get();
      setState(() {
        userDoc = documentSnapshot;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 0.3,
              child: CircleAvatar(
                backgroundColor:const Color.fromARGB(255, 74, 72, 88),
                child: IconButton(              
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.transparent)
                  ),
                  color: Colors.transparent,
                  icon: const Icon(Icons.add),
                  onPressed:() => selectImageGallary(),
                ),
              ),
            ),
            const Text("ФИО: ", style: TextStyle(color: Colors.white)),
            const Text("Email: ", style: TextStyle(color: Colors.white)),

            SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
            ), 
            Container(
              alignment: Alignment.centerRight,
              width: MediaQuery.of(context).size.width * 0.5,
              child: ElevatedButton(
                onPressed: () {}, 
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Редактировать"),
                    Icon(Icons.edit),
                  ],
                )
                ),
            ),
  
             Container(
              width: MediaQuery.of(context).size.width * 0.5,
              alignment: Alignment.bottomCenter,                        
              child: ElevatedButton(
                onPressed: () {}, 
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Выйти"),
                    Icon(Icons.logout)
                  ],
                )
                ),
            ),
          ],
        ),
      ),
    );
  }
}
