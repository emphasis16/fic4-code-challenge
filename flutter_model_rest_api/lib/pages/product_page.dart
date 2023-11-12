import 'package:flutter/material.dart';
import 'package:flutter_model_rest_spi/crud_rest_api/network_manager.dart';
import 'package:flutter_model_rest_spi/crud_rest_api/product_model.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  late Future<ProductModel> productModel;
  late int idSelected;

  @override
  void initState() {
    idSelected = 12;
    productModel = NetworkManager().fetchProduct(id: idSelected);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('REST API - Example Product'),
      ),
      body: FutureBuilder<ProductModel>(
        future: productModel,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        snapshot.data!.title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        snapshot.data!.description,
                        style: const TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                          height: 1.5,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Rp ${snapshot.data!.price},00',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 8),
                      SizedBox(
                        height: 200,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: snapshot.data!.images
                              .map(
                                (e) => Image.network(
                                  e,
                                  height: 200,
                                ),
                              )
                              .toList(),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Category: ${snapshot.data!.category.name}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(
                                () {
                                  idSelected += 1;
                                  productModel = NetworkManager()
                                      .fetchProduct(id: idSelected);
                                },
                              );
                            },
                            icon: const Icon(Icons.add),
                          ),
                          Text(
                            snapshot.data!.id.toString(),
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                idSelected--;
                                productModel = NetworkManager()
                                    .fetchProduct(id: idSelected);
                              });
                            },
                            icon: const Icon(Icons.remove),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text(
                  snapshot.error.toString(),
                ),
              );
            }
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
