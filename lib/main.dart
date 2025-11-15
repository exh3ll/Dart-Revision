import 'package:flutter/material.dart';
import '/dashboard.dart';

void main() {
  runApp(const AssignmentApp());
}

class AssignmentApp extends StatelessWidget {
  const AssignmentApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment 2',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blue),
      home: const Dashboard(),
    );
  }
}
