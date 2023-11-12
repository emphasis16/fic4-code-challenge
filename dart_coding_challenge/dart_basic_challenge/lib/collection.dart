import 'dart:io';

int calculate({required List<int> kumpulanAngka}) {
  var res = 0;
  for (var element in kumpulanAngka) {
    res += element;
  }
  return res;
}

List<int> askNumber() {
  List<int> num = [];
  for (var i = 0; i < 5; i++) {
    print('hayuk masukin angka ke-${i + 1}');
    int angka = int.parse(stdin.readLineSync()!);
    num.add(angka);
  }
  return num;
}

void main() {
  print(calculate(kumpulanAngka: askNumber()));
}
