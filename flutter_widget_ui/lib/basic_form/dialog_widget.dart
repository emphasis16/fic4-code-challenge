import 'package:flutter/material.dart';

class MyDialog extends StatefulWidget {
  const MyDialog({super.key});

  @override
  State<MyDialog> createState() => _MyDialogState();
}

class _MyDialogState extends State<MyDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FIC - Dialog & Bottomsheet'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                await showDialog<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('info'),
                      content: const SingleChildScrollView(
                        child: ListBody(
                          children: [
                            Text('Your order was placed'),
                            Text('Please can wait for several days'),
                          ],
                        ),
                      ),
                      actions: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('OK'),
                        )
                      ],
                    );
                  },
                );
              },
              child: const Text('Open Dialog'),
            ),
            ElevatedButton(
              onPressed: () async {
                await showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return Padding(
                      padding: const EdgeInsets.all(20),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text('Your order was placed'),
                            const SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text('OK'),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: const Text('Open BottomSheet'),
            ),
            ElevatedButton(
              onPressed: () async {
                bool confirm = false;
                await showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      padding: const EdgeInsets.all(30),
                      child: Wrap(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              children: [
                                const Text(
                                  'Confirm',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 20),
                                const Text(
                                  'Are you sure want to delete this item?',
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      style: ElevatedButton.styleFrom(
                                        foregroundColor: Colors.white,
                                        backgroundColor: Colors.grey[600],
                                      ),
                                      child: const Text('No'),
                                    ),
                                    const SizedBox(width: 10),
                                    ElevatedButton(
                                      onPressed: () async {
                                        confirm = true;
                                        Navigator.pop(context);
                                        await showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              title: const Text(
                                                  'You are confirmed'),
                                              content:
                                                  const SingleChildScrollView(
                                                child: ListBody(
                                                  children: [
                                                    Text(
                                                        'You have been confirmed'),
                                                    Text(
                                                        'Nice happy shopping!'),
                                                  ],
                                                ),
                                              ),
                                              actions: [
                                                ElevatedButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: const Text('Dismiss'),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      },
                                      style: ElevatedButton.styleFrom(
                                        foregroundColor: Colors.white,
                                        backgroundColor: Colors.blueGrey,
                                      ),
                                      child: const Text('Yes'),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                );
                if (confirm) debugPrint('Confirmed: $confirm');
              },
              child: const Text('Open Bottomsheet Confirmation'),
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Your request is successful'),
                    backgroundColor: Colors.blue,
                  ),
                );
              },
              child: const Text('Open Snackbar'),
            ),
          ],
        ),
      ),
    );
  }
}
