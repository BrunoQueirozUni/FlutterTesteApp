import 'package:flutter/material.dart';

main() {
  runApp(Container(
    child: const Center(
      child: Text(
        'Hello World',
        textDirection: TextDirection.ltr,
        style: TextStyle(color: Colors.blue, fontSize: 30.0),
      ),
  )));
}
