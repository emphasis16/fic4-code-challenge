import 'package:flutter/material.dart';

class MySizedBox extends StatelessWidget {
  const MySizedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FIC - SizedBox'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Description',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec tincidunt purus non fringilla sollicitudin. Nunc tristique ligula mauris. Praesent condimentum neque at tortor fringilla convallis. Proin tempus faucibus velit, ut ultrices ipsum vulputate a. Pellentesque in egestas turpis, a gravida tortor. Curabitur elementum lectus at ligula sagittis auctor. Suspendisse lacinia tristique nunc a vulputate. Donec suscipit mauris ex, sollicitudin vehicula massa facilisis vel. Mauris vel ipsum a erat euismod luctus.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Size',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Height 120cm',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      'Width 80cm',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2.5,
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Treatment',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Jati Wood, Canvas',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'Amazing Love',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          fontWeight: FontWeight.normal,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
