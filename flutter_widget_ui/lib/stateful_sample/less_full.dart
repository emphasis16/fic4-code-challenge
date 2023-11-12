import 'package:flutter/material.dart';

class MyLessFul extends StatefulWidget {
  const MyLessFul({super.key});

  @override
  State<MyLessFul> createState() => _MyLessFulState();
}

class _MyLessFulState extends State<MyLessFul> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FIC - Stateless Stateful'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: const Column(
            children: [
              ShowText(text: 'Ini text stateless'),
              ChangeText(),
            ],
          ),
        ),
      ),
    );
  }
}

class ShowText extends StatelessWidget {
  const ShowText({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}

class ChangeText extends StatefulWidget {
  const ChangeText({super.key});

  @override
  State<ChangeText> createState() => _ChangeTextState();
}

class _ChangeTextState extends State<ChangeText> {
  String text = 'FIC - Farrelino';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('$text - ini text stateful bisa ganti'),
        ElevatedButton(
          onPressed: () {
            setState(
              () {
                text = DateTime.now().toString();
              },
            );
          },
          child: const Text('Change Text'),
        ),
      ],
    );
  }
}
