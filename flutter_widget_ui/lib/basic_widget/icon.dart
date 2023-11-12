import 'package:flutter/material.dart';

class MyIcon extends StatelessWidget {
  const MyIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FIC - Icon'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: const Column(
          children: [
            Icon(
              Icons.share,
              size: 32,
            ),
            Icon(
              Icons.favorite,
              color: Colors.red,
              size: 36,
            ),
          ],
        ),
      ),
    );
  }
}
