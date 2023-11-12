import 'package:flutter/material.dart';

class MyScaffold extends StatefulWidget {
  const MyScaffold({super.key});

  @override
  State<MyScaffold> createState() => _MyScaffoldState();
}

class _MyScaffoldState extends State<MyScaffold> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Code'),
        centerTitle: true,
      ),
      body: Center(
        child: RichText(
          text: TextSpan(
            children: <TextSpan>[
              const TextSpan(
                text: 'You have pressed this button ',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              TextSpan(
                text: '$count ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: count.isEven ? Colors.blue : Colors.red,
                ),
              ),
              const TextSpan(
                text: 'times',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(
            () {
              if (count >= 10) {
                count = 0;
              } else {
                count++;
              }
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
