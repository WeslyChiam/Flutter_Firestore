import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firestore/const/text.dart';
import 'package:flutter_firestore/functions/readData.dart';

class mainPage extends StatelessWidget {
  final Stream<QuerySnapshot> users =
      FirebaseFirestore.instance.collection('users').snapshots();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cloud Firestore Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(250.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            defaultText('Read Data from Firestore'),
            Container(
              height: 50.0,
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: readData().readUser(),
            ),
            defaultText('Write Data to Firestore'),
            idTextField(),
            nameTextField('User'),
            emailTextField(),
          ],
        ),
      ),
    );
  }
}
