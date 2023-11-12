int luas({required int panjang, required int lebar}) => panjang * lebar;

void main() {
  print(
      'Luas sebuah persegi panjang berukuran 80 x 10 adalah ${luas(panjang: 80, lebar: 10)}');
}
