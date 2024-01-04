// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class userModal {
  userModal({
    required this.name,
    required this.id,
    required this.number,
    required this.post,
  });
  String name;
  String id;
  int number;
  String post;
}
class GridModal{
  GridModal({required this.icon,required this.label, required this.color});
  final IconData icon;
  final String label;
  final Color color;
}
