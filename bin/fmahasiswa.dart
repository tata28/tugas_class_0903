import 'dart:io';
import 'fcivitas.dart';

class Mahasiswa extends Civitas {
  double _ips = 0, _ipk = 0;
  int _semester = 0, _sks = 0;
  bool _status = true;

  Mahasiswa(String? nama, int? gajiDasar, bool status, double ips, int sks)
      : super(nama, gajiDasar) {
    this._ips = ips;
    updateIpk(ips);
    this._sks = sks;
    this._status = status;
  }

  set ips(double dtIps) {
    _ips = dtIps;
    updateIpk(_ips);
  }

  double get ips => this._ips!;

  set sks(int dtSks) {
    _sks = dtSks;
  }

  int get sks => this._sks!;

  double get ipkSiswa {
    return _ipk;
  }

  void updateIpk(double ips) {
    if (_semester == 0) {
      _ipk = ips;
    } else {
      _ipk = (_ipk + ips) / _semester;
    }
    print('semester : $_semester');
    _semester++;

    print('ipk :$_ipk');
    print('ips : $ips');
  }

  bool get status => this._status!;

  set status(bool dtStatus) {
    _status = dtStatus;
  }
}
