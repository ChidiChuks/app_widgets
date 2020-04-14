import 'package:flutter/material.dart';

// personal imports
import './ui/home.dart';

void main() {
  runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Simple Layouts",
      home: new Home(),
    ),
  );
}