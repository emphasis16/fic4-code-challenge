import 'dart:io';

void cekAngka({required int angka}) {
  if (angka > 0) {
    print('Angka tersebut positif');
  } else if (angka < 0) {
    print('Angka tersebut negatif');
  } else {
    print('Angka tersebut nol');
  }
}

void main() {
  try {
    print('yok masukkan angka pilihan anda: ');
    int angka = int.parse(stdin.readLineSync()!);
    cekAngka(angka: angka);
  } catch (e) {
    print(e);
  }
}
