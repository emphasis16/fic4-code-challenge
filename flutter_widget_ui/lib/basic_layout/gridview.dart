import 'package:flutter/material.dart';

class MyGridView extends StatelessWidget {
  const MyGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FIC - GridView'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 185 / 243,
                mainAxisSpacing: 16,
                crossAxisSpacing: 20,
                children: [
                  ...List.generate(
                    6,
                    (index) {
                      return Container(
                        // height: 1000,
                        // width: double.infinity, ga ngaruh
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadiusDirectional.circular(20),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
