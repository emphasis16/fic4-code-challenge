import 'dart:io';

void confirm({required int usia}) {
  if (usia >= 18) {
    print('Anda adalah seorang dewasa');
  } else {
    print('Anda masih seorang anak-anak');
  }
}

void main() {
  try {
    print('yok masukkan umur anda: ');
    int usia = int.parse(stdin.readLineSync()!);
    confirm(usia: usia);
  } catch (e) {
    print(e);
  }
}
