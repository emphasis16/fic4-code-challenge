import 'dart:convert';

class Mahasiswa {
  String nama = 'Siswa';
  String jurusan = 'unknown';
  String angkatan = '20xx';

  Mahasiswa() {
    print(
        'ini constructor default dan semua data default => nama: $nama, jurusan: $jurusan, angkatan: $angkatan');
  }

  Mahasiswa.daftarFull({
    required this.nama,
    required this.jurusan,
    required this.angkatan,
  }) {
    print(
        'data siswa berhasil dimasukkan => nama: $nama, jurusan: $jurusan, angkatan: $angkatan');
  }

  Mahasiswa.daftarFromJsonString(String jsonString) {
    Map<String, dynamic> jsonData = jsonDecode(jsonString);
    nama = jsonData['name'];
    jurusan = jsonData['major'];
    angkatan = jsonData['sch_group'];
    print(
        'data siswa berhasil dimasukkan => nama: $nama, jurusan: $jurusan, angkatan: $angkatan');
  }
}
