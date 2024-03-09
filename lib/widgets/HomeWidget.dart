import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("MyApp"),
          centerTitle: true,
          backgroundColor: Colors.red[100],
        ),
        body:Container(
          color: Colors.grey[100],
        )
    );
  }
}
