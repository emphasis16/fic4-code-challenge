import 'package:flutter/material.dart';

class MySliver extends StatefulWidget {
  const MySliver({super.key});

  @override
  State<MySliver> createState() => _MySliverState();
}

class _MySliverState extends State<MySliver> {
  bool pinned = true;

  bool snap = false;

  bool floating = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FIC - Sliver'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: pinned,
            snap: snap,
            floating: floating,
            expandedHeight: 150,
            flexibleSpace: const FlexibleSpaceBar(
              title: Text('Sliver App Bar'),
              background: FlutterLogo(),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 20,
              (context, index) {
                return Container(
                  color: index.isOdd ? Colors.white : Colors.blue[200],
                  height: 100,
                  child: Center(
                    child: Text(
                      index.toString(),
                      textScaleFactor: 2,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
