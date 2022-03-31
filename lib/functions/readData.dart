import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class readData extends StatelessWidget {
  final Stream<QuerySnapshot> users =
      FirebaseFirestore.instance.collection('users').snapshots();

  Widget readUser() {
    return StreamBuilder<QuerySnapshot>(
      stream: users,
      builder: (
        BuildContext context,
        AsyncSnapshot<QuerySnapshot> snapshot,
      ) {
        if (snapshot.hasError) {
          return const Text('Failed to Connect!');
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Text('Connecting...');
        }
        final data = snapshot.requireData;
        return ListView.builder(
          itemCount: data.size,
          itemBuilder: (context, index) {
            return Text(
                'Name: ${data.docs[index]['Name']} Email: ${data.docs[index]['Email']}');
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
