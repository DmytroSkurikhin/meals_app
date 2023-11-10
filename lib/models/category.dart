import 'package:flutter/material.dart';

//not a widget, just blueprint for regular object
class Category {
  const Category({
    required this.id,
    required this.title,
    this.color = Colors.orange, //if no color provided this orange would be used
  });
  final String id;
  final String title;
  final Color color;
}
