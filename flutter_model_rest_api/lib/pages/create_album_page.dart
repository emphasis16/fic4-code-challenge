import 'package:flutter/material.dart';
import 'package:flutter_model_rest_spi/crud_rest_api/album_model.dart';
import 'package:flutter_model_rest_spi/crud_rest_api/album_request.dart';
import 'package:flutter_model_rest_spi/crud_rest_api/network_manager.dart';

class CreateAlbumPage extends StatefulWidget {
  const CreateAlbumPage({super.key});

  @override
  State<CreateAlbumPage> createState() => _CreateAlbumPageState();
}

class _CreateAlbumPageState extends State<CreateAlbumPage> {
  late TextEditingController _titleController;
  late Future<Album?> futureAlbum;

  @override
  void initState() {
    _titleController = TextEditingController();
    futureAlbum = Future.value(null);
    super.initState();
  }

  @override
  void dispose() {
    _titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('REST API - Create Album'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: _titleController,
                  decoration: const InputDecoration(
                      hintText: 'Enter desired title to make'),
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      futureAlbum = NetworkManager().createAlbum(
                        AlbumRequestModel(title: _titleController.text),
                      );
                    });
                  },
                  child: const Text('Create Album'),
                ),
              ],
            ),
            const SizedBox(height: 8),
            FutureBuilder<Album?>(
              future: futureAlbum,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.hasData) {
                    return Center(
                      child: Text(
                          'ID: ${snapshot.data!.id}, Result: ${snapshot.data!.title}, User ID: ${snapshot.data!.userId}'),
                    );
                  } else if (snapshot.hasError) {
                    return Center(
                      child: Text(
                        snapshot.error.toString(),
                      ),
                    );
                  } else {
                    return const Center(
                      child: Text(
                        'Silahkan isi title',
                      ),
                    );
                  }
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
