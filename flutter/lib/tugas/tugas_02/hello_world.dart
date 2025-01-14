import 'package:flutter/material.dart';

class HelloWorld extends StatelessWidget {
  const HelloWorld({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade700,
          title: const Text(
            'Hello TF22A',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Text(
            'Hello World',
            style: TextStyle(
                color: Colors.blue.shade700,
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.width * 0.1),
          ),
        ),
      ),
    );
  }
}
