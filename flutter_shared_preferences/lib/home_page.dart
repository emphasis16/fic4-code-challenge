import 'package:flutter/material.dart';
import 'package:flutter_shared_preferences/counter_shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _getDataCounter() async {
    _counter = await CounterSharedPreferences().getData();
    setState(() {});
  }

  void _incrementCounter() async {
    await CounterSharedPreferences().saveData(++_counter);
    _getDataCounter();
  }

  void _decrementCounter() async {
    await CounterSharedPreferences().saveData(--_counter);
    _getDataCounter();
  }

  void _removeCouter() async {
    await CounterSharedPreferences().removeData();
    _getDataCounter();
  }

  @override
  void initState() {
    _getDataCounter();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FIC - Shared Preferences'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Value',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
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
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                _removeCouter();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              child: const Text('CLEAR'),
            ),
          ],
        ),
      ),
    );
  }
}
