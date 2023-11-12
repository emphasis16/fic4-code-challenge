import 'package:flutter/material.dart';

class MyRow extends StatelessWidget {
  const MyRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FIC - Row'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(12),
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_back),
              ),
            ),
            const Text(
              'Detail',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.share,
                size: 32,
              ),
            )
          ],
        ),
      ),
    );
  }
}
