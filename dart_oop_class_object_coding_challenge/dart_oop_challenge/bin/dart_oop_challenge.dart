// import 'package:dart_oop_challenge/dart_oop_challenge.dart'
//     as dart_oop_challenge;
// ignore_for_file: unused_local_variable

import 'package:dart_oop_challenge/kucing.dart';
import 'package:dart_oop_challenge/mahasiswa.dart';
import 'package:dart_oop_challenge/nasabah.dart';

void main(List<String> arguments) {
  // 1) Object and class
  Kucing kucing1 = Kucing();
  kucing1.nama = 'Sappy';
  kucing1.umur = 30;
  print('Seekor kucing bernama ${kucing1.nama} berumur ${kucing1.umur} bulan');

  // 2) Constructor
  Mahasiswa umar = Mahasiswa();
  Mahasiswa nono = Mahasiswa.daftarFull(
    nama: 'Nono',
    jurusan: 'SIJA',
    angkatan: '2025',
  );
  print(nono.nama);
  String dataIjul =
      '{"name" : "Juliano", "major" : "TJKT", "sch_group" : "2024"}';
  Mahasiswa ijul = Mahasiswa.daftarFromJsonString(dataIjul);
  print(ijul.nama);

  // 3) Membuat Aplikasi Bank
  var nasabah1 = Nasabah(
    nama: 'Farrelino Arvia',
    alamat: 'Jl. Karangkoja Utara',
  );
  var nasabah2 = Nasabah(
    nama: 'Umar',
    alamat: 'Jl. Layur',
  );
  
  nasabah1.cekDana();
  nasabah2.cekDana();
  nasabah1.ambil(-100);
  nasabah1.ambil(100);
  nasabah1.simpan(-100);
  nasabah1.simpan(100);
  nasabah1.ambil(-10);
  nasabah1.ambil(10);
  nasabah2.simpan(1000);
  nasabah2.ambil(130);

  nasabah1.cekDana();
  nasabah2.cekDana();
}
