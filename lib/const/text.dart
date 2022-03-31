import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_firestore/const/color.dart';

final idTextController = TextEditingController();
final nameTextController = TextEditingController();
final priceTextController = TextEditingController();
final descriptionTextController = TextEditingController();
final emailTextController = TextEditingController();

Widget defaultText(text) {
  return Text(
    text,
    style: const TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
    ),
  );
}

Widget defaultPadding(text) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(children: [
      Text(
        text,
        style: const TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w600,
          color: black,
        ),
      ),
    ]),
  );
}

Widget idTextField() {
  return TextField(
    controller: idTextController,
    decoration: const InputDecoration(
      prefixIcon: Icon(Icons.code),
      border: OutlineInputBorder(),
      labelText: 'ID Code',
    ),
  );
}

Widget nameTextField(name) {
  return TextField(
    controller: nameTextController,
    decoration: InputDecoration(
      prefixIcon: const Icon(Icons.account_circle),
      border: const OutlineInputBorder(),
      labelText: '$name Name',
    ),
  );
}

Widget priceTextField() {
  return TextField(
    controller: priceTextController,
    decoration: const InputDecoration(
      prefixIcon: Icon(Icons.price_change),
      border: OutlineInputBorder(),
      labelText: 'Latest Price',
    ),
  );
}

Widget emailTextField() {
  return TextField(
    controller: emailTextController,
    decoration: const InputDecoration(
      prefixIcon: Icon(Icons.email),
      border: OutlineInputBorder(),
      labelText: 'Email',
    ),
  );
}

Widget descTextField() {
  return TextField(
    controller: descriptionTextController,
    decoration: const InputDecoration(
      prefixIcon: Icon(Icons.text_fields),
      border: OutlineInputBorder(),
      labelText: 'Description',
    ),
  );
}
