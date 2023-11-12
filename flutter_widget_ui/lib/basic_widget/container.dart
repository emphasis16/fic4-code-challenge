import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FIC - Container'),
      ),
      body: Container(
        height: 300,
        width: double.infinity,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              offset: Offset.zero,
              blurRadius: 15.0,
            ),
          ],
        ),
      ),
    );
  }
}
