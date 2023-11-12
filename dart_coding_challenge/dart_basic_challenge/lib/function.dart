import 'dart:io';

String capitalize({required String kata}) => kata.toUpperCase();

void main() {
  print('masukkin kata lu noh: ');
  var word = stdin.readLineSync();
  print(capitalize(kata: word!));
}
