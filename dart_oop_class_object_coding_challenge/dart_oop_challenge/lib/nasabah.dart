class Nasabah {
  String nama;
  String alamat;
  int saldo = 0;

  Nasabah({
    required this.nama,
    required this.alamat,
  }) {
    print('Akun berhasil dibuat, selamat datang $nama :)');
  }

  int abs(int a) => a < 0 ? a * -1 : a;

  void simpan(int masuk) {
    if (masuk < 0) {
      print('kok negatif? hayooo');
    } else {
      saldo += abs(masuk);
      print(
          'Saldo berhasil ditambahkan sebesar Rp$masuk,00, jumlah saldo sekarang: Rp$saldo,00');
    }
  }

  void ambil(int masuk) {
    if (masuk < 0) {
      print('kok negatif? hayooo');
    } else if (saldo <= 0) {
      print('saldomu habis, ga bisa ambil :(');
    } else {
      saldo -= abs(masuk);
      print(
          'Saldo berhasil ditarik sebesar Rp$masuk,00, jumlah saldo sekarang: Rp$saldo,00');
    }
  }

  void cekDana() {
    print('Saldo $nama sebesar $saldo');
  }
}
