import 'package:flutter/material.dart';
import 'package:flutter_widget_ui/navigation/nav_pop.dart';

class MyNavPush extends StatelessWidget {
  const MyNavPush({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FIC - Navigation Push'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyNavPop(),
                  ),
                );
              },
              child: const Text('go to next page'),
            ),
          ],
        ),
      ),
    );
  }
}
