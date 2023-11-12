import 'package:flutter/material.dart';
import 'package:flutter_path_provider/counter_file_storage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 16;

  void _getDataCounter() async {
    _counter = await CounterFileStorage().readCounter();
    setState(() {});
  }

  void _incrementCounter() async {
    _counter += 1;
    await CounterFileStorage().writeCounter(_counter);
    _getDataCounter();
  }

  void _decrementCounter() async {
    _counter -= 1;
    await CounterFileStorage().writeCounter(_counter);
    _getDataCounter();
  }

  void _removeCounter() async {
    await CounterFileStorage().writeCounter(16);
    _getDataCounter();
  }

  @override
  void initState() {
    super.initState();
    _getDataCounter();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FIC - Path Provider'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Counter Example from Directory',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              '$_counter',
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _decrementCounter,
                  child: const Text('-'),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: _incrementCounter,
                  child: const Text('+'),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                _removeCounter();
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: const Text('CLEAR'),
            ),
          ],
        ),
      ),
    );
  }
}
