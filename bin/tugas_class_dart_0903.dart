import 'fmahasiswa.dart';

void main() {
  var ms1 = Mahasiswa('Ana', 0, true, 3.9, 20);
  print('Nama mahasiswa : ${ms1.nama}');
  if (ms1.status) {
    print("Status mahasiswa : aktif");
  } else {
    print('Status mahasiswa : tidak aktif');
  }
  print('Ips : ${ms1.ips}');
  print('Ipk : ${ms1.ipkSiswa}');
  print('SKS yang diambil : ${ms1.sks}');

  ms1.ips = 3.3;
  ms1.ips = 3.9;
  ms1.ips = 3.4;
  ms1.status = false;

  print(" ");
  print('Nama mahasiswa : ${ms1.nama}');
  if (ms1.status) {
    print("Status mahasiswa : aktif");
  } else {
    print('Status mahasiswa : tidak aktif');
  }
  print('Ips : ${ms1.ips}');
  print('Ipk : ${ms1.ipkSiswa}');
  print('SKS yang diambil : ${ms1.sks}');
}
