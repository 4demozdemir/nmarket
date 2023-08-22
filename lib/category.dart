import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  final String category;

  const Category({
    super.key,
    required this.category,
  });

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: <Widget>[
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.blue,
        ),
        Container(
          color: Colors.green,
        ),
        Container(
          color: Colors.teal,
        ),
      ],
    );
  }
}
