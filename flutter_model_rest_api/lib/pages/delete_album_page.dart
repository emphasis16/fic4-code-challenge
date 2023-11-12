import 'package:flutter/material.dart';
import 'package:flutter_model_rest_spi/crud_rest_api/network_manager.dart';

import '../crud_rest_api/album_model.dart';

class DeleteAlbumPage extends StatefulWidget {
  final int id;
  const DeleteAlbumPage({super.key, required this.id});

  @override
  State<DeleteAlbumPage> createState() => _DeleteAlbumPageState();
}

class _DeleteAlbumPageState extends State<DeleteAlbumPage> {
  late Future<Album> futureAlbum;

  @override
  void initState() {
    futureAlbum = NetworkManager().fetchAlbum(id: widget.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('REST API - Delete Album ${widget.id}'),
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: Center(
        child: FutureBuilder<Album>(
          future: futureAlbum,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasData) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      snapshot.data!.title.isEmpty
                          ? 'Deleted'
                          : snapshot.data!.title,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          futureAlbum = NetworkManager().deleteAlbum(widget.id);
                        });
                      },
                      child: Text('Delete album ${widget.id}'),
                    ),
                  ],
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text('${snapshot.error}'),
                );
              }
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
