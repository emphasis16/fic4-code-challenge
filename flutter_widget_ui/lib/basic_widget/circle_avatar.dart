import 'package:flutter/material.dart';

class MyCircleAvatar extends StatefulWidget {
  const MyCircleAvatar({super.key});

  @override
  State<MyCircleAvatar> createState() => _MyCircleAvatarState();
}

class _MyCircleAvatarState extends State<MyCircleAvatar> {
  List<Color> colors = [
    Colors.blue,
    Colors.green,
    Colors.amber,
    const Color(0xffb00b69),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FIC - CircleAvatar'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://placebear.com/g/200/200'),
            ),
            Row(
              children: [
                ...List.generate(
                  colors.length,
                  (index) => CircleAvatar(
                    radius: 30,
                    backgroundColor: colors[index],
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
