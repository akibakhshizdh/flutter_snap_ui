import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String description;

  const CustomCard({super.key, required this.title, required this.description});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Column(children: [Text(title), Text(description)]),
    );
  }
}
