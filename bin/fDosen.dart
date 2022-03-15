import 'dart:io';

import 'fcivitas.dart';

class Dosen extends Civitas {
  int? _tunjHadir;
  int? _tunjSKS;

  Dosen(String? nama, int? gajiDasar) : super(nama, gajiDasar);

  set tunjHadir(int tunjHadir) {
    _tunjHadir = tunjHadir;
  }

  set tunjSKS(int tunjSKS) {
    _tunjSKS = tunjSKS;
  }

  int get tunjHadir => this._tunjHadir!;

  int get tunjSKS => this._tunjSKS!;
}

class DosenTetap extends Dosen {
  int _sks = 1;

  DosenTetap(String? nama, int? gajiDasar, int sks, int tunjHadir)
      : super(nama, gajiDasar);

  int GajiTotal() {
    return (gajiDasar + (sks * 40000) + (30 * tunjHadir));
  }

  set sks(int dtSks) {
    _sks = dtSks;
  }

  int get sks => this._sks!;
}

class DosenLuarBiasa extends Dosen {
  int _sks = 1;

  DosenLuarBiasa(String? nama, int? gajiDasar, int sks, int tunjHadir)
      : super(nama, gajiDasar);

  set sks(int dtSks) {
    _sks = dtSks;
  }

  int get sks => this._sks!;

  int GajiTotal() {
    return (gajiDasar + (30 * tunjHadir));
  }
}

class DosenTamu extends Dosen {
  DosenTamu(String? nama, int? gajiDasar) : super(nama, gajiDasar);

  int GajiTotal() {
    return (gajiDasar + (30 * tunjHadir));
  }
}
