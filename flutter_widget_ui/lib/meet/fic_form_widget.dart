import 'package:flutter/material.dart';

class FicFormWidget extends StatefulWidget {
  const FicFormWidget({super.key});

  @override
  State<FicFormWidget> createState() => _FicFormWidgetState();
}

class _FicFormWidgetState extends State<FicFormWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FIC - Batch 4'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 20,
        ),
        child: Column(
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Button 1')),
            ElevatedButton(onPressed: () {}, child: const Text('Button 2')),
            ElevatedButton(onPressed: () {}, child: const Text('Button 3')),
          ],
        ),
      ),
    );
  }
}
