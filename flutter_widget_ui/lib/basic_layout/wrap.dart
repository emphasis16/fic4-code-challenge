import 'package:flutter/material.dart';

class MyWrap extends StatelessWidget {
  MyWrap({super.key});

  final List<Color> colors = [
    Colors.blue,
    Colors.cyan,
    Colors.amber,
    Colors.red,
    Colors.green,
    Colors.grey,
    Colors.lightGreen,
    Colors.blueGrey,
    Colors.purple,
    Colors.deepPurple,
    Colors.yellow,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FIC - Wrap'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              spacing: 30,
              runSpacing: 8,
              children: colors.map(
                (color) {
                  return InkWell(
                    onTap: () {},
                    child: Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 3,
                          color: Colors.grey,
                        ),
                        shape: BoxShape.circle,
                        color: color,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            offset: Offset.zero,
                            blurRadius: 15,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
