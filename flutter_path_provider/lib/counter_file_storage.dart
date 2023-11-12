import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class CounterFileStorage {
  // getting local path directory of the app
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  // getting the counter.txt file which is saved on the app directory
  Future<File> get _localFile async {
    final path = await _localPath;
    debugPrint(path);
    return File('$path/counter.txt');
  }

  // write the data as a string to the counter.txt file
  Future<File> writeCounter(int counter) async {
    final file = await _localFile;
    return file.writeAsString('$counter');
  }

  // read data and return default value if any error happens (including file is empty or no data has been initialized)
  Future<int> readCounter() async {
    try {
      final file = await _localFile;
      final content = await file.readAsString();
      debugPrint('content ==> $content');
      return int.parse(content);
    } catch (e) {
      return 16;
    }
  }
}
