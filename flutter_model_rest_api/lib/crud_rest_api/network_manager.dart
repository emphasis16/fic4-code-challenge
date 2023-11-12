import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_model_rest_spi/crud_rest_api/album_model.dart';
import 'package:flutter_model_rest_spi/crud_rest_api/album_request.dart';
import 'package:flutter_model_rest_spi/crud_rest_api/product_model.dart';
import 'package:http/http.dart' as http;

class NetworkManager {
  // fetch one product
  // implemented
  Future<ProductModel> fetchProduct({required int id}) async {
    final response = await http.get(
      Uri.parse('https://api.escuelajs.co/api/v1/products/$id'),
    );
    if (response.statusCode == 200) {
      debugPrint(response.body);
      return ProductModel.fromJson(response.body);
    } else {
      throw Exception('Failed to fetch product id:$id');
    }
  }

  // fetch one album
  // implemented
  Future<Album> fetchAlbum({required int id}) async {
    final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/albums/$id'),
    );
    if (response.statusCode == 200) {
      debugPrint(response.body);
      return Album.fromJson(response.body);
    } else {
      throw Exception('Failed to fetch album id:$id');
    }
  }

  // fetch all album as a list
  // implemented
  Future<List<Album>> fetchAllAlbum() async {
    final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/albums/'),
    );
    if (response.statusCode == 200) {
      debugPrint(response.body);
      List<Album> listAlbum = List<Album>.from(
          jsonDecode(response.body).map((x) => Album.fromMap(x)));
      return listAlbum;
    } else {
      throw Exception('Failed to fetch all album');
    }
  }

  // create album
  // implemented
  Future<Album> createAlbum(AlbumRequestModel album) async {
    final response = await http.post(
      Uri.parse('https://jsonplaceholder.typicode.com/albums/'),
      body: album.toJson(),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    if (response.statusCode == 201) {
      debugPrint(response.body);
      return Album.fromJson(response.body);
    } else {
      throw Exception('Failed to create a task');
    }
  }

  // update album
  Future<Album> updateAlbum(AlbumRequestModel album, int id) async {
    final response = await http.put(
      Uri.parse('https://jsonplaceholder.typicode.com/albums/$id'),
      body: album.toJson(),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    if (response.statusCode == 200) {
      debugPrint(response.body);
      return Album.fromJson(response.body);
    } else {
      throw Exception('Failed to update a task');
    }
  }

  // delete album, walaupun response nya kosong {} tetap kembalikan model supaya ga null
  // kalau null, futurebuilder error
  // implemented
  Future<Album> deleteAlbum(int id) async {
    final response = await http.delete(
      Uri.parse('https://jsonplaceholder.typicode.com/albums/$id'),
    );
    if (response.statusCode == 200) {
      debugPrint(response.body);
      return Album.fromJson(response.body);
    } else {
      throw Exception('Failed to delete task id:$id');
    }
  }
}
