import 'package:flutter/material.dart';
import 'package:flutter_model_rest_spi/crud_rest_api/album_model.dart';
import 'package:flutter_model_rest_spi/crud_rest_api/network_manager.dart';
import 'package:flutter_model_rest_spi/pages/create_album_page.dart';
import 'package:flutter_model_rest_spi/pages/delete_album_page.dart';
import 'package:flutter_model_rest_spi/pages/product_page.dart';
import 'package:flutter_model_rest_spi/pages/update_album_page.dart';

class AlbumsPage extends StatefulWidget {
  const AlbumsPage({super.key});

  @override
  State<AlbumsPage> createState() => _AlbumsPageState();
}

class _AlbumsPageState extends State<AlbumsPage> {
  late Future<List<Album>> listAlbum;

  @override
  void initState() {
    listAlbum = NetworkManager().fetchAllAlbum();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('REST API - All Album'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProductPage(),
                ),
              );
            },
            icon: const Icon(Icons.shopping_cart),
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: FutureBuilder<List<Album>>(
        future: listAlbum,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              return SafeArea(
                child: SizedBox(
                  height: double.infinity,
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: const Icon(Icons.album),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(snapshot.data![index].title),
                          ],
                        ),
                        trailing: Column(
                          children: [
                            const SizedBox(height: 4),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => UpdateAlbumPage(
                                          id: snapshot.data![index].id),
                                    ),
                                  );
                                },
                                child: const Icon(Icons.edit),
                              ),
                            ),
                            const SizedBox(height: 4),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => DeleteAlbumPage(
                                        id: snapshot.data![index].id,
                                      ),
                                    ),
                                  );
                                },
                                child: const Icon(Icons.remove_circle_outline),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => const Divider(
                      thickness: 2,
                    ),
                    itemCount: snapshot.data!.length,
                  ),
                ),
              );
            } else if (snapshot.hasError) {
              return const Center(
                child: Text('Fail to fetch'),
              );
            }
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CreateAlbumPage(),
            ),
          );
        },
        backgroundColor: Colors.red,
        child: const Icon(Icons.add),
      ),
    );
  }
}
