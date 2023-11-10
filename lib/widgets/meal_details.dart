import 'package:flutter/material.dart';

class MealDetails extends StatelessWidget {
  const MealDetails({
    super.key,
    required this.title,
    required this.imageUrl,
  });

  final String title;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Image.network(imageUrl),
    );
  }
}
