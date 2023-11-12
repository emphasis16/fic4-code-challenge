import 'package:flutter/material.dart';
import 'package:flutter_model_rest_spi/crud_rest_api/album_model.dart';
import 'package:flutter_model_rest_spi/crud_rest_api/album_request.dart';
import 'package:flutter_model_rest_spi/crud_rest_api/network_manager.dart';

class UpdateAlbumPage extends StatefulWidget {
  final int id;
  const UpdateAlbumPage({super.key, required this.id});

  @override
  State<UpdateAlbumPage> createState() => _UpdateAlbumPageState();
}

class _UpdateAlbumPageState extends State<UpdateAlbumPage> {
  late TextEditingController titleController;
  late Future<Album?> futureAlbum;

  @override
  void initState() {
    titleController = TextEditingController();
    futureAlbum = NetworkManager().fetchAlbum(id: widget.id);
    super.initState();
  }

  @override
  void dispose() {
    titleController.dispose();
    debugPrint('titlecontroller disposed');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('REST API - Update Album ${widget.id}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  decoration:
                      const InputDecoration(hintText: 'Enter desired title'),
                  controller: titleController,
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      futureAlbum = NetworkManager().updateAlbum(
                          AlbumRequestModel(title: titleController.text),
                          widget.id);
                    });
                  },
                  child: Text('Update Album ${widget.id}'),
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
                      child: Text('${snapshot.error}'),
                    );
                  }
                }
                return const CircularProgressIndicator();
              },
            ),
          ],
        ),
      ),
    );
  }
}
