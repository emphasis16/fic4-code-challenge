import 'package:flutter/material.dart';

class MyAspectRatio extends StatelessWidget {
  const MyAspectRatio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FIC - Aspect Ratio'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: AspectRatio(
          aspectRatio: 240 / 180, // lebar layar / tinggi layar
          child: Container(
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
