void main() {
  print('kumpulan bilangan genap 1 - 10: ');
  List<int> bilangan = [];
  for (var i = 1; i <= 10; i++) {
    if (i % 2 == 0) bilangan.add(i);
  }
  print(bilangan);
}
