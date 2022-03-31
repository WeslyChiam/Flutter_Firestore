import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddUser extends StatelessWidget {
  final String name;
  final String email;
  final String role;
  AddUser(this.name, this.email, this.role);
  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    Future<void> addUser() {
      return users.doc('MC-02').set({
        'Name': 'Jane',
        'Email': 'jane@mail.com',
        'Role': 'Worker',
      });
    }

    return TextButton(
      onPressed: addUser,
      child: Text('Add User'),
    );
  }
}

class AddProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
