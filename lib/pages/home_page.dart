import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue.shade50,
        body: Container(
          alignment: Alignment.center,
          child: Text("HOME"),
        ));
  }
}
