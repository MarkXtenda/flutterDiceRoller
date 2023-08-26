import 'package:flutter/material.dart';
import 'background.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: WidgetAppWithBackgroundGradient(Colors.black, Color.fromARGB(129, 0, 0, 0)),
      ),
    ),
  );
}

