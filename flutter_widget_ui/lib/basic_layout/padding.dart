import 'package:flutter/material.dart';

class MyPadding extends StatelessWidget {
  const MyPadding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FIC - Padding'),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        height: 500,
        width: double.infinity,
        decoration: BoxDecoration(border: Border.all()),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 20,
                top: 30,
                bottom: 40,
              ),
              child: Text(
                'Categories',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
