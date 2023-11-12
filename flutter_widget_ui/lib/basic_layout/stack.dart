import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  const MyStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FIC - Stack'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: const Column(
          children: [
            Stack(
              clipBehavior: Clip.none, //supaya kaya ga kepotong
              children: [
                Icon(
                  Icons.shopping_cart,
                  size: 50,
                ),
                Positioned(
                  top: -4,
                  right: -4,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.red,
                    child: Text(
                      '3',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
