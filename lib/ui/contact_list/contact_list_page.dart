import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:faker/faker.dart' as faker;

class ContactListPage extends StatelessWidget {
  final faker = Faker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: ListView.builder(
        itemCount: 30,
        // Runs & buils every single list item
        itemBuilder: (context, index) {
          return Center(
            child: Text(
              faker.person.name(),
              style: TextStyle(fontSize: 30),
            ),
          );
        },
      ),
    );
  }
}
