import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FIC - Text'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: const Column(
          children: [
            Text(
              'Discover the most modern furniture',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 22,
                fontWeight: FontWeight.w500,
                letterSpacing: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
