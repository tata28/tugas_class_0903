import 'dart:ffi';

class Civitas {
  String? _nama;
  int? _gajiDasar = 10000000;

  Civitas(this._nama, this._gajiDasar);

  set nama(String dtNama) {
    _nama = dtNama;
  }

  set gajiDasar(int dtGajiDasar) {
    _gajiDasar = dtGajiDasar;
  }

  String get nama => this._nama!;

  int get gajiDasar => this._gajiDasar!;
}
