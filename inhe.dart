class Hewan {
  String? nama;
  double? umur;
  double? berat;

  Hewan({this.nama, this.umur, this.berat});

  makan(banyak) {
    berat = berat! + banyak;
  }

  bab(kurang) {
    berat = berat! - kurang;
  }
}

class burung extends Hewan {
  String? warnaBulu;

  burung(String? namanya, double? umurnya, double? beratnya, this.warnaBulu)
    : super(nama: namanya, umur: umurnya, berat: beratnya);

  Terbang(int? kecepatan) {
    print("Terbang dengan kecepatan $kecepatan km/jam");
  }
}

void main() {
  var burung1 = burung("Merak", 2.5, 1, "merah");

  print("Nama : ${burung1.nama}");
  print("Umur: ${burung1.umur}");
  print("Berat : ${burung1.berat}");
  print("Warna Bulu : ${burung1.warnaBulu}");

  print("========================================");
  burung1.makan(3);
  print("Nama : ${burung1.nama}");
  print("Umur: ${burung1.umur}");
  print("Berat : ${burung1.berat}");
  print("Warna Bulu : ${burung1.warnaBulu}");

  burung1.bab(1);
  print("========================================");
  print("Nama : ${burung1.nama}");
  print("Umur: ${burung1.umur}");
  print("Berat : ${burung1.berat}");
  print("Warna Bulu : ${burung1.warnaBulu}");
  burung1.Terbang(5);
}
