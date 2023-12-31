import 'package:flutter/material.dart';

class MyColumn extends StatelessWidget {
  const MyColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FIC - Column'),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        // color: Colors.amber,
        padding: const EdgeInsets.all(10),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Stylish Chair',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Rp 350.000',
              style: TextStyle(
                fontSize: 20,
                color: Color(0xffb00b69),
                fontWeight: FontWeight.w900,
                letterSpacing: 1,
              ),
            )
          ],
        ),
      ),
    );
  }
}
